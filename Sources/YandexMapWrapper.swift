import Foundation
import YandexMapsMobile

final class YandexMapWrapper {
    static func run(apiKey: String,
                    locale: String?) {
        YMKMapKit.setApiKey(apiKey)
        YMKMapKit.setLocale(locale)
        YMKMapKit.sharedInstance()
    }
}
