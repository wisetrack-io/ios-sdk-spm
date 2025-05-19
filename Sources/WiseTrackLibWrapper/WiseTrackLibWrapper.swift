import Sentry

public class WiseTrackLibWrapper {
    public static func preload() {
        print("WiseTrack initialized.")
        _ = SentryClient.self
    }
}
