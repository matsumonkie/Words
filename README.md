Words
====

Words is an API that translates words to number and vice versa.

## API

The url you want to hit is formed like that

    /translate/country(currently only fr)/translation(from_number or from_words)


## From words to number

When you want to translate words to a number, you have to give
at least 3 words separated by underscores.

    /translate/fr/?from_words=abaissera_abaissera_abaissera

will return  

    {
      source: [
        "abaissera",
        "abaissera",
        "abaissera"
      ],
      translation: 0
    }

## From number to words

When you want to translate a number, the API will return you 3 words. For example :

    http://localhost:3000/translate/fr/?from_number=0

will return  

    {
      source: 0,
      translation: [
        "abaissera",
        "abaissera",
        "abaissera"
      ]
    }
