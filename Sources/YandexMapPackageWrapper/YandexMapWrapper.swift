import Foundation
import YandexMapsMobile

public final class YandexMapWrapper {
    public static func run(apiKey: String,
                           locale: String?) {
        YMKMapKit.setApiKey(apiKey)
        YMKMapKit.setLocale(locale)
        YMKMapKit.sharedInstance()
    }
}
