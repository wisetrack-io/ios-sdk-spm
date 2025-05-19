import Sentry

public class WiseTrack {
    public static func preload() {
        print("WiseTrack initialized.")
        _ = SentryClient.self
    }
}
