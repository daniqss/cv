#import "template.typ": cv, cv_html
#import "i18n/es.typ" as es
#import "i18n/en.typ" as en
#import "i18n/gl.typ" as gl

#let languages = (es: es.cv_data, en: en.cv_data, gl: gl.cv_data)
#let lang = sys.inputs.at("lang", default: "es")
#let format = sys.inputs.at("format", default: "pdf")

#if format == "html" {
  cv_html(languages.at(lang))
} else {
  cv(languages.at(lang))
}
