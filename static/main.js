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

// get client wanted language
const requested = (navigator.language || defaultLanguage.code)
  .slice(0, 2)
  .toLowerCase();
const language =
  supportedLanguages.find((lang) => lang.code === requested) || defaultLanguage;

document.documentElement.lang = language.code;
document.getElementById("pdf-download").href = `cv-${language.code}.pdf`;

// fetch the pre-rendered per-language cv and inject its markup in place,
// so the page keeps a single shareable url instead of redirecting
fetch(`cv-${language.code}.html`)
  .then((response) => {
    if (!response.ok) throw new Error(response.statusText);
    return response.text();
  })
  .then((html) => {
    const parsed = new DOMParser().parseFromString(html, "text/html");
    const content = parsed.getElementById("cv");
    if (!content) throw new Error("missing #cv content");
    document.getElementById("cv-root").replaceWith(content);
  })
  .catch(() => {
    document.getElementById("cv-root").remove();
    const error = document.getElementById("cv-error");
    const file = `cv-${language.code}.pdf`;
    error.textContent = language.errorMessage;
    const link = document.createElement("a");
    link.href = file;
    link.textContent = language.errorLinkText;
    error.appendChild(link);
    error.style.display = "block";
  });
