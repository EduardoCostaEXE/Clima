# Clima

Clima é um aplicativo iOS que consulta à API da [OpenWeather](https://openweathermap.org/api) para apresentar em tela a temperatura e clima da cidade solicitada pelo usuário.
O aplicativo é de autoria da AppBrewery onde fiz o curso para a criação deste aplicativo.

### Condition Codes

```
switch conditionID {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
```

> This is a companion project to The App Brewery's Complete App Development Bootcamp, check out the full course at [www.appbrewery.co](https://www.appbrewery.co/)
