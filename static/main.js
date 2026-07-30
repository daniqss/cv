// supported languages and their error fallback messages
const defaultLanguage = {
  code: "en",
  errorMessage: "Could not load the CV. ",
  errorLinkText: "Open the PDF instead.",
};
const supportedLanguages = [
  defaultLanguage,
  {
    code: "es",
    errorMessage: "No se ha podido cargar el CV. ",
    errorLinkText: "Abre el PDF en su lugar.",
  },
  {
    code: "gl",
    errorMessage: "Non se puido cargar o CV. ",
    errorLinkText: "Abre o PDF no seu lugar.",
  },
];

function detectLanguage() {
  const requested = (navigator.language || defaultLanguage.code)
    .slice(0, 2)
    .toLowerCase();
  return (
    supportedLanguages.find((lang) => lang.code === requested) ||
    defaultLanguage
  );
}

function showCvError(language) {
  document.getElementById("cv-root").remove();

  const error = document.getElementById("cv-error");
  error.textContent = language.errorMessage;

  const link = document.createElement("a");
  link.href = `cv-${language.code}.pdf`;
  link.textContent = language.errorLinkText;

  error.appendChild(link);
  error.style.display = "block";
}

function extractCvContent(html) {
  const parsed = new DOMParser().parseFromString(html, "text/html");
  const content = parsed.getElementById("cv");
  if (!content) throw new Error("missing #cv content");
  return content;
}

document.addEventListener("DOMContentLoaded", () => {
  const language = detectLanguage();

  document.documentElement.lang = language.code;
  document.getElementById("pdf-download").href = `cv-${language.code}.pdf`;

  fetch(`cv-${language.code}.html`)
    .then((response) => {
      if (!response.ok) throw new Error(response.statusText);
      return response.text();
    })
    .then(extractCvContent)
    .then((content) => document.getElementById("cv-root").replaceWith(content))
    .catch(() => showCvError(language));
});
