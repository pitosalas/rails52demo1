module ContentsHelper
  def google_language_options
    options_for_select(google_language_list)
  end

  def google_language_list
    [["English", "en"],
      ["French", "fr"],
      ["Spanish", "es"],
      ["Dutch", "nl"],
      ["Arabic", "ar"],
      ["Icelandic", "is"],
      ["Japanese", "ja"],
      ["Italian", "it"],
      ["Hebrew", "iw"]]
  end
end
