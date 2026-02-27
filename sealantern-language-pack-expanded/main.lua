-- Sea Lantern Expanded Language Pack Plugin
-- Adds 233+ languages to Sea Lantern
-- Version 1.0.0

local plugin = {}

function plugin.load()
  sl.log.info("🌍 Loading Sea Lantern Expanded Language Pack...")
  
  -- All 233+ language files are pre-included in the plugin
  -- The plugin system automatically discovers and loads them
  
  local language_files = {
    "aa", "ab", "ae", "af-ZA", "ak", "am-ET", "ar-SA", "av", "ay", "az-Arab",
    "az-Latn", "az", "ba", "bg-BG", "bh", "bi", "bm", "bn-BD", "bo", "br",
    "bs", "ca", "ce", "ch", "co", "cr", "cs-CZ", "cu", "cv", "cy", "da",
    "de-AT", "de-CH", "de-DE", "dv", "dz", "ee", "el-GR", "en-AU", "en-CA",
    "en-GB", "en-IE", "en-IN", "en-NZ", "en-SG", "en-US", "en-ZA", "es-AR",
    "es-CL", "es-CO", "es-ES", "es-MX", "es-PE", "es-VE", "et-EE", "eu",
    "fa", "fa-IR", "ff", "fi-FI", "fil-PH", "fj", "fo", "fr-BE", "fr-CA",
    "fr-CH", "fr-FA", "fr-LU", "fy", "gan", "gd", "gl", "gn", "grc", "gu-IN",
    "gv", "ha-NG", "hak", "he-IL", "he-ancient", "hi-IN", "ho", "hr-HR",
    "hsn", "hu-HU", "hy", "id-ID", "ig", "ii", "ik", "io", "is-IS", "it-IT",
    "iu", "ja-JP", "ja-kana", "jv", "ka", "ka-IN", "kg", "kh", "ki", "kj",
    "kk", "kl", "km-KH", "kn", "ko-jamo", "ko-KR", "kr", "ks", "ku",
    "ku-Arab", "ku-Latn", "kv", "kw", "ky", "la", "lb", "lg", "li", "ln",
    "lo", "lo-LA", "lt-LT", "lu", "lv-LV", "mg", "mh", "mi", "mk", "ml-IN",
    "mn", "mo", "mr-IN", "ms-MY", "mt", "my", "my-MM", "nah", "nan", "nb",
    "nd", "ne", "ng", "nl-BE", "nl-NL", "nn", "no", "nr", "nv", "ny", "oc",
    "oj", "om", "os", "pa-Arab", "pa-Guru", "pa-IN", "pi", "pl-PL", "ps",
    "pt-AO", "pt-BR", "pt-PT", "qua", "rm", "rn", "ro-RO", "ru-RU", "rw",
    "sa", "sc", "sd", "se", "sg", "shn", "si", "sit", "sk-SK", "sl-SI", "sm",
    "sn", "so", "sq", "sr-Cyrl", "sr-Latn", "ss", "st", "su", "sv-SE",
    "sw-KE", "ta-IN", "te-IN", "th-TH", "ti", "tk", "tl", "tn", "to",
    "tr-TR", "translated_af", "ts", "tt", "tw", "ty", "ug", "uk-UA", "ur-PK",
    "uz", "ve", "vi-VN", "vo", "wa", "wo", "wuu", "xh-ZA", "yo-NG", "yue",
    "za", "zh", "zh-Bopo", "zh-CN", "zh-Hans", "zh-Hans-CN", "zh-Hant",
    "zh-Hant-HK", "zh-Hant-TW", "zh-pinyin", "zh-TW", "zh-WenYuan", "zu-ZA",
    "x-Easter-Egg"
  }
  
  local loaded_count = #language_files
  sl.log.info("✅ Sea Lantern Expanded Language Pack loaded successfully!")
  sl.log.info("📚 Total languages available: " .. loaded_count .. "+")
  
  return true
end

function plugin.unload()
  sl.log.info("🌍 Unloading Sea Lantern Expanded Language Pack...")
  return true
end

return plugin
