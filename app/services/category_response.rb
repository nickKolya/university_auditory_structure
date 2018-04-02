class CategoryResponse
  class << self
    def call
      {
        "categories":[
          {
            "key":"scientific_premises",
            "name":"Навчальні приміщення",
            "sub_categories": [
              {
                "key": "auditory",
                "name": "Аудиторія",
                "fields": [
                  {
                    "name": "number_of_double_tables",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_triple_tables",
                    "type": "integer"
                  },
                  {
                    "name": "dais",
                    "type": "boolean"
                  },
                  {
                    "name": "interactive_whiteboard",
                    "type": "boolean"
                  }
                ]
              },
              {
                "key": "computer_lab",
                "name": "Комп'ютерна лабораторія",
                "fields": [
                  {
                    "name": "number_of_computers",
                    "type": "integer"
                  },
                  {
                    "name": "interactive_whiteboard",
                    "type": "boolean"
                  }
                ]
              },
              {
                "key": "scientific_lab",
                "name": "Наукова Лабораторія",
                "fields": [
                  {
                    "name": "number_of_test_tubes",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_microscopes",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_shredders",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_stands",
                    "type": "integer"
                  }
                ]
              }
            ]
          },
          {
            "key":"service_premises",
            "name":"Службові приміщення",
            "sub_categories": [
              {
                "key": "office_space",
                "name": "Службове приміщення",
                "fields": [
                  {
                    "name": "number_of_cumputers",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_printers",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_phones",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_bookcases",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_organizer",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_clocks",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_tvs",
                    "type": "integer"
                  },
                  {
                    "name": "emergency_exit",
                    "type": "boolean"
                  }
                ]
              }
            ]
          },
          {
            "key":"general_use_premises",
            "name":"Приміщення загального користування",
            "sub_categories": [
              {
                "key": "dining_room",
                "name": "Їдальня",
                "fields": [
                  {
                    "name": "number_of_benches",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_ovens",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_cookers",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_kettles",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_pans",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_cash_registers",
                    "type": "integer"
                  },
                  {
                    "name": "emergency_exit",
                    "type": "boolean"
                  }
                ]
              },
              {
                "key": "library",
                "name": "Бібліотека",
                "fields": [
                  {
                    "name": "number_of_shelves",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_benches",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_computers",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_printers",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_speakers",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_headphones",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_blackboards",
                    "type": "integer"
                  },
                  {
                    "name": "plants",
                    "type": "boolean"
                  },
                  {
                    "name": "emergency_exit",
                    "type": "boolean"
                  }
                ]
              },
              {
                "key": "sanitary_room",
                "name": "Санітарне приміщення",
                "fields": [
                  {
                    "name": "number_of_brooms",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_scoopes",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_mops",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_rags",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_gloves",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_buckets",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_mirrors",
                    "type": "integer"
                  }
                ]
              },
              {
                "key": "wardrobe",
                "name": "Гардероб",
                "fields": [
                  {
                    "name": "number_of_benches",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_hangers",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_coat_tags",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_locked_cells",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_mirrors",
                    "type": "integer"
                  }
                ]
              }
            ]
          },
          {
            "key":"conference_rooms",
            "name":"Конференц-зали",
            "sub_categories": [
              {
                "key": "conference_room",
                "name": "Конференц-зал",
                "fields": [
                  {
                    "name": "number_of_microphones",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_monitors",
                    "type": "integer"
                  },
                  {
                    "name": "translation_equipment",
                    "type": "boolean"
                  },
                  {
                    "name": "stereo_system",
                    "type": "boolean"
                  },
                  {
                    "name": "flipchart",
                    "type": "boolean"
                  },
                  {
                    "name": "light_system",
                    "type": "boolean"
                  },
                  {
                    "name": "dais",
                    "type": "boolean"
                  },
                  {
                    "name": "coffee_break",
                    "type": "boolean"
                  },
                  {
                    "name": "wardrobe",
                    "type": "boolean"
                  },
                  {
                    "name": "balcony",
                    "type": "boolean"
                  },
                  {
                    "name": "type",
                    "type": "string"
                  }
                ]
              }
            ]
          },
          {
            "key":"museums",
            "name":"Музеї",
            "sub_categories": [
              {
                "key": "museum",
                "name": "Museum",
                "fields": [
                  {
                    "name": "number_of_exhibits",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_floors",
                    "type": "integer"
                  },
                  {
                    "name": "number_of_computers",
                    "type": "integer"
                  },
                  {
                    "name": "national_treasures",
                    "type": "boolean"
                  },
                  {
                    "name": "background_music",
                    "type": "boolean"
                  },
                  {
                    "name": "presence_of_guide",
                    "type": "boolean"
                  },
                  {
                    "name": "emergency_exit",
                    "type": "boolean"
                  }
                ]
              }
            ]
          }
        ]
      }
    end
  end
end
