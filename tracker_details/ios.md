# DEV GUIDES
API docs | yes
Good documentation | yes
Basic demo app | yes
Instrumentation apps ("realistic") | yes
Release notes on Github | y

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | yes
Automated deploy to package manager | no
Automated deploy to Github | n

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | yes
Custom connection timeout | no
Custom request headers | yes
Custom NetworkConnection/HttpClient | yes
Custom max payload size (to deprecate?!) | yes
Custom batch size | yes
EventStore has maximum limit | no
Events are buffered in memory or db | yes
Custom EventStore | yes
Provide stop retry for HTTP error codes | no
Custom threadpool size | y
Request callback (event sending callback) | y
Server anonymisation option | y
Cookie jar | n

# TRACKER CONFIGURATION
Namespace mandatory | yes
Configurable AppID | yes
Configurable logger | yes
Anonymous tracking | no
Autotracking session entity | yes
Autotracking application entity | yes
Autotracking platform entity | yes
Autotracking screenView event | yes, but... | for SwiftUI apps, it's semi-automatic - the Views have to be labelled
Autotracking screen entity | yes
Autotracking lifecycle events | yes
Autotracking exception events | yes
GDPR entity configuration | yes
Global contexts | yes
Autotracking page entity | n/a
Autotracking geolocation entity | y
Autotracking deeplink entity | y
Choose which platform entity properties to track | y

# SESSION CONFIGURATION
Has session | y
Foreground/background timeout | yes
onSessionUpdate callback | y
Foreground/background callbacks | n

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | n
Set user-agent | yes
Set custom userID | yes
Set timezone | yes
Set language | yes
Set networkUserid | y
Set domainUserid | y
Set ipAddress | y
Set screen resolution | y
Set screen viewport | y
Set colour depth | y
Set domain sessionId | n
Set domain sessionIndex | n
Set user fingerprint | 

# EVENT LOSS CALLBACKS
Sending failure callback | no
Drop events callback | yes

# FEATURES
Snowplow API | yes
Remote configuration | yes
Multiple tracker instances | yes
Track an event on multiple trackers at once | no
Event_id and timestamp not overridable | yes
True_timestamp available | yes
Sent_timestamp available | yes
Track returns event_id | yes
Automatically track general atomic fields | yes
Tracker pausable | yes
Emitter pausable | yes
Flush events command | yes
Flush at regular time intervals | no
Start new session command | yes
Event index counter for session | yes
Timestamp on session | yes
Asynchronous event sending | yes
Event sending retry | yes
Plug-in architecture | y
Events are different classes | y
Events are different functions | n
Session pausable | y
Media tracking | y
Youtube tracking | n
Vimeo tracking | n
Ecommerce tracking | Y

# OUT-OF-THE-BOX EVENTS
Self-describing event | yes
Unstructured event | no
Structured event | yes
Page view event | yes | labelled in the API docs as deprecated, but it isn't actually
Mobile screen view event | yes
Snowplow screen view event | no
eCommerce events (old) | deprecated
Timing event | yes
Page ping event | no
Link click event | no
Form change event | no
Form submit event | no
Form focus event | no
Site search event | no
Add to cart event (old) | no
Remove from cart event (old) | no
Error/exception event | yes
App lifecycle event | yes
Installation event | yes
Consent granted event | yes
Consent withdrawn event | yes
Push notification event | yes
Deep link event | yes
Social media event | no
Ad impression event | no
Ad click event | no
Ad conversion event | no
WebVitals event | n/a

# OUT-OF-THE-BOX ENTITIES
DesktopContext | n/a
MobileContext / platformContext | yes
DeviceContext | no
ApplicationContext | yes
GeoLocationContext | yes
SessionContext | yes
ScreenContext | yes
gdpr/consent entity | yes
DeepLinkContext | yes
WebPageContext | n/a
PerformanceTiming entity | n/a
gaCookies entity | n/a
ClientHints entity | n/a
Optimisely entity | n/a
WebVitals | n/a
PrivacySandbox entity | n/a
PerformanceNavigationTiming entity | n/a

# DETAILS
Client/Server | client
Version | 5.4.2
Status | Actively Maintained
Repository | https://github.com/snowplow/snowplow-objc-tracker
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/objective-c-tracker/
Supported platforms | iOS, tvOS, watchOS, macOS