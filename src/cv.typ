#import "template.typ": cv
#import "i18n/es.typ" as es
#import "i18n/en.typ" as en
#import "i18n/gl.typ" as gl

#let languages = (es: es.cv_data, en: en.cv_data, gl: gl.cv_data)
#let lang = sys.inputs.at("lang", default: "es")

#cv(languages.at(lang))
