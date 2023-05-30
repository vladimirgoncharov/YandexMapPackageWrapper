import Foundation
import YandexMapsMobile

public final class YandexMapWrapper {
    static func run(apiKey: String,
                    locale: String?) {
        YMKMapKit.setApiKey(apiKey)
        YMKMapKit.setLocale(locale)
        YMKMapKit.sharedInstance()
    }
}
