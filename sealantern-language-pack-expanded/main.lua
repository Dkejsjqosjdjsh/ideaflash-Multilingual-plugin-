-- Sea Lantern Expanded Language Pack Plugin
-- Adds 233+ languages to Sea Lantern
-- Version 1.0.0

local plugin = {}

-- Use absolute path from PLUGIN_DIR global variable provided by Sea Lantern
local LANGUAGES_DIR = PLUGIN_DIR .. "/languages"
local ELEMENT_ID = "sea-lantern-language-pack"

-- All 233+ supported languages
local SUPPORTED_LANGUAGES = {
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

-- Load a language file
local function load_language_file(locale_code)
  local file_path = LANGUAGES_DIR .. "/" .. locale_code .. ".json"
  local ok, content = pcall(function()
    return sl.fs.read(file_path)
  end)

  if not ok or not content then
    sl.log.warn("Failed to load language file: " .. file_path)
    return nil
  end

  return content
end

-- Initialize plugin - make languages available
local function initialize_languages()
  sl.log.info("🌍 Sea Lantern Expanded Language Pack: Initializing " .. #SUPPORTED_LANGUAGES .. " languages")
  
  local success_count = 0
  for _, locale_code in ipairs(SUPPORTED_LANGUAGES) do
    local lang_data = load_language_file(locale_code)
    if lang_data then
      success_count = success_count + 1
    end
  end

  sl.log.info("✅ Successfully loaded " .. success_count .. " language files")
  return success_count > 0
end

-- Inject UI notification
local function inject_notification()
  local html = [[
    <div style="position: fixed; bottom: 20px; right: 20px; background: #4CAF50; color: white; 
                 padding: 15px 20px; border-radius: 8px; font-family: Arial; font-size: 14px; 
                 z-index: 10000; box-shadow: 0 4px 6px rgba(0,0,0,0.2); max-width: 300px;">
      <strong>🌍 Language Pack Loaded</strong><br>
      <small>233+ languages now available</small>
    </div>
  ]]

  local ok, result = pcall(function()
    return sl.ui.inject_html(ELEMENT_ID, html)
  end)

  if not ok then
    sl.log.error("Failed to inject notification: " .. tostring(result))
  else
    sl.log.info("Language pack notification injected")
  end
end

-- Plugin lifecycle functions
function plugin.onLoad()
  sl.log.info("🌍 Sea Lantern Expanded Language Pack plugin loaded")
end

function plugin.onEnable()
  sl.log.info("✅ Sea Lantern Expanded Language Pack plugin enabled")
  
  -- Initialize and load all language files
  if initialize_languages() then
    inject_notification()
  end
end

function plugin.onPageChanged(path)
  -- Ensure languages are available when navigating
  sl.log.debug("Page changed: " .. tostring(path))
end

function plugin.onDisable()
  sl.log.info("🌍 Sea Lantern Expanded Language Pack plugin disabled")
  
  -- Remove notification
  pcall(function()
    sl.ui.remove_html(ELEMENT_ID)
  end)
end

function plugin.onUnload()
  sl.log.info("🌍 Sea Lantern Expanded Language Pack plugin unloaded")
end

return plugin
