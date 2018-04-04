class CategoryResponse
  class << self
    def call
      {
        "categories": {
          "scientific_premises": {
            "name":"Навчальні приміщення",
            "sub_categories": {
              "auditory": {
                "name": "Аудиторія",
                "fields": {
                  "number_of_double_tables": {
                    "name": "number_of_double_tables",
                    "type":"integer"
                  },
                  "number_of_triple_tables": {
                    "name": "number_of_triple_tables",
                    "type":"integer"
                  },
                  "dais": {
                    "name": "dais",
                    "type":"boolean"
                  },
                  "interactive_whiteboard": {
                    "name": "interactive_whiteboard",
                    "type":"boolean"
                  }
                }
              },
              "computer_lab": {
                "name": "Комп'ютерна лабораторія",
                "fields": {
                  "number_of_computers": {
                    "name": "number_of_computers",
                    "type": "integer"
                  },
                  "interactive_whiteboard": {
                    "name": "interactive_whiteboard",
                    "type": "boolean"
                  }
                }
              },
              "scientific_lab": {
                "name": "Наукова Лабораторія",
                "fields": {
                  "number_of_test_tubes": {
                    "name": "number_of_test_tubes",
                    "type": "integer"
                  },
                  "number_of_microscopes": {
                    "name": "number_of_microscopes",
                    "type": "integer"
                  },
                  "number_of_shredders": {
                    "name": "number_of_shredders",
                    "type": "integer"
                  },
                  "number_of_stands": {
                    "name": "number_of_stands",
                    "type": "integer"
                  }
                }
              }
            }
          },
          "service_premises": {
            "name":"Службові приміщення",
            "sub_categories": {
              "office_space": {
                "name": "Службове приміщення",
                "fields": {
                  "number_of_cumputers": {
                    "name": "number_of_cumputers",
                    "type": "integer"
                  },
                  "number_of_printers": {
                    "name": "number_of_printers",
                    "type": "integer"
                  },
                  "number_of_phones": {
                    "name": "number_of_phones",
                    "type": "integer"
                  },
                  "number_of_bookcases": {
                    "name": "number_of_bookcases",
                    "type": "integer"
                  },
                  "number_of_organizer": {
                    "name": "number_of_organizer",
                    "type": "integer"
                  },
                  "number_of_clocks": {
                    "name": "number_of_clocks",
                    "type": "integer"
                  },
                  "number_of_tvs": {
                    "name": "number_of_tvs",
                    "type": "integer"
                  },
                  "emergency_exit": {
                    "name": "emergency_exit",
                    "type": "boolean"
                  }
                }
              }
            }
          },
          "general_use_premises": {
            "name":"Приміщення загального користування",
            "sub_categories": {
              "dining_room": {
                "name": "Їдальня",
                "fields": {
                  "number_of_benches": {
                    "name": "number_of_benches",
                    "type": "integer"
                  },
                  "number_of_ovens": {
                    "name": "number_of_ovens",
                    "type": "integer"
                  },
                  "number_of_cookers": {
                    "name": "number_of_cookers",
                    "type": "integer"
                  },
                  "number_of_kettles": {
                    "name": "number_of_kettles",
                    "type": "integer"
                  },
                  "number_of_pans": {
                    "name": "number_of_pans",
                    "type": "integer"
                  },
                  "number_of_cash_registers": {
                    "name": "number_of_cash_registers",
                    "type": "integer"
                  },
                  "emergency_exit": {
                    "name": "emergency_exit",
                    "type": "boolean"
                  }
                }
              },
              "library": {
                "name": "Бібліотека",
                "fields": {
                  "number_of_shelves": {
                    "name": "number_of_shelves",
                    "type": "integer"
                  },
                  "number_of_benches": {
                    "name": "number_of_benches",
                    "type": "integer"
                  },
                  "number_of_computers": {
                    "name": "number_of_computers",
                    "type": "integer"
                  },
                  "number_of_printers": {
                    "name": "number_of_printers",
                    "type": "integer"
                  },
                  "number_of_speakers": {
                    "name": "number_of_speakers",
                    "type": "integer"
                  },
                  "number_of_headphones": {
                    "name": "number_of_headphones",
                    "type": "integer"
                  },
                  "number_of_blackboards": {
                    "name": "number_of_blackboards",
                    "type": "integer"
                  },
                  "plants": {
                    "name": "plants",
                    "type": "boolean"
                  },
                  "emergency_exit": {
                    "name": "emergency_exit",
                    "type": "boolean"
                  }
                }
              },
              "sanitary_room": {
                "name": "Санітарне приміщення",
                "fields": {
                  "number_of_brooms": {
                    "name": "number_of_brooms",
                    "type": "integer"
                  },
                  "number_of_scoopes": {
                    "name": "number_of_scoopes",
                    "type": "integer"
                  },
                  "number_of_mops": {
                    "name": "number_of_mops",
                    "type": "integer"
                  },
                  "number_of_rags": {
                    "name": "number_of_rags",
                    "type": "integer"
                  },
                  "number_of_gloves": {
                    "name": "number_of_gloves",
                    "type": "integer"
                  },
                  "number_of_buckets": {
                    "name": "number_of_buckets",
                    "type": "integer"
                  },
                  "number_of_mirrors": {
                    "name": "number_of_mirrors",
                    "type": "integer"
                  }
                }
              },
              "wardrobe": {
                "name": "Гардероб",
                "fields": {
                  "number_of_benches": {
                    "name": "number_of_benches",
                    "type": "integer"
                  },
                  "number_of_hangers": {
                    "name": "number_of_hangers",
                    "type": "integer"
                  },
                  "number_of_coat_tags": {
                    "name": "number_of_coat_tags",
                    "type": "integer"
                  },
                  "number_of_locked_cells": {
                    "name": "number_of_locked_cells",
                    "type": "integer"
                  },
                  "number_of_mirrors": {
                    "name": "number_of_mirrors",
                    "type": "integer"
                  }
                }
              }
            }
          },
          "conference_rooms": {
            "name":"Конференц-зали",
            "sub_categories": {
              "conference_room": {
                "name": "Конференц-зал",
                "fields": {
                  "number_of_microphones": {
                    "name": "number_of_microphones",
                    "type": "integer"
                  },
                  "number_of_monitors": {
                    "name": "number_of_monitors",
                    "type": "integer"
                  },
                  "translation_equipment": {
                    "name": "translation_equipment",
                    "type": "boolean"
                  },
                  "stereo_system": {
                    "name": "stereo_system",
                    "type": "boolean"
                  },
                  "flipchart": {
                    "name": "flipchart",
                    "type": "boolean"
                  },
                  "light_system": {
                    "name": "light_system",
                    "type": "boolean"
                  },
                  "dais": {
                    "name": "dais",
                    "type": "boolean"
                  },
                  "coffee_break": {
                    "name": "coffee_break",
                    "type": "boolean"
                  },
                  "wardrobe": {
                    "name": "wardrobe",
                    "type": "boolean"
                  },
                  "balcony": {
                    "name": "balcony",
                    "type": "boolean"
                  }
                }
              }
            }
          },
          "museums": {
            "name":"Музеї",
            "sub_categories": {
              "museum": {
                "name": "Museum",
                "fields": {
                  "number_of_exhibits": {
                    "name": "number_of_exhibits",
                    "type": "integer"
                  },
                  "number_of_floors": {
                    "name": "number_of_floors",
                    "type": "integer"
                  },
                  "number_of_computers": {
                    "name": "number_of_computers",
                    "type": "integer"
                  },
                  "national_treasures": {
                    "name": "national_treasures",
                    "type": "boolean"
                  },
                  "background_music": {
                    "name": "background_music",
                    "type": "boolean"
                  },
                  "presence_of_guide": {
                    "name": "presence_of_guide",
                    "type": "boolean"
                  },
                  "emergency_exit": {
                    "name": "emergency_exit",
                    "type": "boolean"
                  }
                }
              }
            }
          }
        }
      }
    end
  end
end
