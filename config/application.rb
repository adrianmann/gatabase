require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Gatabase
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.counties = ["Antrim",
                       "Armagh",
                       "Carlow",
                       "Cavan",
                       "Clare",
                       "Cork",
                       "Derry",
                       "Donegal",
                       "Down",
                       "Dublin",
                       "Fermanagh",
                       "Galway",
                       "Kerry",
                       "Kildare",
                       "Kilkenny",
                       "Laois",
                       "Leitrim",
                       "Limerick",
                       "Longford",
                       "Louth",
                       "Mayo",
                       "Meath",
                       "Monaghan",
                       "Offaly",
                       "Roscommon",
                       "Sligo",
                       "Tipperary",
                       "Tyrone",
                       "Waterford",
                       "Westmeath",
                       "Wexford",
                       "Wicklow"]

    config.antrim = ["All Saints",
                     "Ardoyne Kickhams",
                     "Cardinal O'Donnells",
                     "Ballymoney",
                     "Carey Faughs",
                     "Clooney Gaels HC",
                     "Con Magees",
                     "Cushendun Emmets",
                     "Creggan Kickhams",
                     "Dunloy Cuchullains",
                     "Erin\'s Own",
                     "Éire Óg",
                     "Gort na Móna",
                     "Glen Rovers",
                     "Glenshesk",
                     "Henry Joy McCracken\'s",
                     "John Mitchel\'s",
                     "Lagmore Gaels",
                     "Lámh Dhearg",
                     "Laochra Loch Lao",
                     "Latharna Óg",
                     "Loch Mór Dál gCais",
                     "McQuillan\'s",
                     "Michael Davitt\'s",
                     "Michael Dwyer\'s",
                     "Na Fuiseoige",
                     "Naomh Eoin",
                     "Naomh Mhuire",
                     "O'Donovan Rossa",
                     "Oisín Glenariff",
                     "Patrick Pearse\'s",
                     "Patrick Sarsfields",
                     "Roger Casement\'s",
                     "Ruairí Óg",
                     "Sean Martin\'s",
                     "Sean McDermott\'s",
                     "Sean Stinson\'s",
                     "Loughgiel Shamrocks",
                     "Shane O'Neill\'s",
                     "St Agnes'",
                     "St Brigid\'s",
                     "St Comgall\'s",
                     "St Enda\'s",
                     "St Ergnat\'s",
                     "St Gall\'s",
                     "St James\'",
                     "St John\'s",
                     "St Joseph\'s",
                     "St Malachy\'s",
                     "St Mary\'s",
                     "St Mary's GFC",
                     "St Mary\'s",
                     "St Paul\'s",
                     "St Patrick\'s",
                     "St Teresa\'s",
                     "Tir-na-nÓg"]

    confid.armagh = ["O'Neill\'s GAC, An Port Mór",
                     "Annaghmore Pearses Gaelic Football Club (GFC)",
                     "Cúchulainn\'s Hurling Club (HC)",
                     "Armagh Harps",
                     "Pearse Óg Gaelic Athletic Club (GAC)",
                     "Ballyhegan Davitts",
                     "Ballymacnab Round Towers",
                     "St Brenda\'s Camogie Club",
                     "Ballymacnab",
                     "Belleeks Laurence O'Toole\'s",
                     "St. Patrick\'s, Carrickcruppen",
                     "Clady Sean South\'s",
                     "Shane O'Neill\'s, Camloch",
                     "Craobh Rua Camloch HC",
                     "Clann Éireann Lurgan",
                     "Clonmore Robert Emmet\'s",
                     "Collegeland O'Rahilly\'s",
                     "Thomas Davis Corrinshego",
                     "Éire Óg Craigavon",
                     "Crosmaglen Rangers",
                     "Cullaville Blues",
                     "Phelim Brady\'s Darkley",
                     "Derrymacash St Enda\'s Camogie Club",
                     "Derrynoose St Mochua\'s",
                     "Dorsey Emmet\'s",
                     "Dromintee St. Patrick\'s",
                     "Forkhill Peadar Ó Doirnín",
                     "Granemore St Mary\'s",
                     "Grange St. Colmcille\'s",
                     "High Moss Sarsfields",
                     "Keady Michael Dwyer\'s",
                     "Keady Lámh Dhearg HC",
                     "Killeavy St. Monina\'s",
                     "Lissummon",
                     "Lurgan Clan na Gael",
                     "Lurgan Sean Treacy\'s HC",
                     "Madden Raparees",
                     "St Joseph\'s Camogie Club, Madden",
                     "Maghery Sean MacDermott\'s GAC",
                     "Middletown Eoghan Ruadh (football)",
                     "Na Fianna (hurling)",
                     "St John\'s (camogie)",
                     "Mullaghbawn Cuchullian\'s",
                     "Mullabrack O'Donovan Rossa",
                     "St Michael\'s, Newtownhamilton",
                     "St Michael\'s GFC, Killean",
                     "St. Patrick\'s Cullyhanna",
                     "St. Paul\'s Lurgan",
                     "St Peter\'s GAC Lurgan",
                     "Portadown St Malachy\'s HC",
                     "Portadown Tír na nÓg",
                     "Poyntzpass Redmond O'Hanlon\'s",
                     "Silverbridge Harps",
                     "Tullysaran O'Connell\'s",
                     "Whitecross St. Killian\'s",
                     "Wolfe Tones, Derrymacash"]



  end
end
