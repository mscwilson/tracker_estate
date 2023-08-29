# DEV GUIDES
API docs | no
Good documentation | no
Basic demo app | no
Instrumentation apps ("realistic") | no
Release notes on Github | y

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | yes
Automated demo building | yes
Automated deploy to package manager | yes
Automated deploy to Github | y

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | yes
Custom connection timeout | no
Custom request headers | no
Custom NetworkConnection/HttpClient | no
Custom max payload size (to deprecate?!) | yes
Custom batch size | yes
EventStore has maximum limit | no
Events are buffered in memory or db | yes
Custom EventStore | no
Provide stop retry for HTTP error codes | no
Custom threadpool size | 
Request callback (event sending callback) | 
Server anonymisation option | y
Cookie jar | 

# TRACKER CONFIGURATION
Namespace mandatory | yes
Configurable AppID | yes
Configurable logger | yes
Anonymous tracking | y
Autotracking session entity | yes
Autotracking application entity | yes
Autotracking platform entity | yes
Autotracking screenView event | yes
Autotracking screen entity | yes
Autotracking lifecycle events | yes
Autotracking exception events | y
GDPR entity configuration | yes
Global contexts | yes
Autotracking page entity | n/a
Autotracking geolocation entity | y
Autotracking deeplink entity | y
Choose which platform entity properties to track | n

# SESSION CONFIGURATION
Has session | y
Foreground/background timeout | yes
onSessionUpdate callback | n
Foreground/background callbacks | n

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | y
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
Drop events callback | no

# FEATURES
Snowplow API | yes
Remote configuration | no
Multiple tracker instances | yes
Track an event on multiple trackers at once | no
Event_id and timestamp not overridable | yes
True_timestamp available | yes
Sent_timestamp available | yes
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | n
Emitter pausable | no
Flush events command | yes
Flush at regular time intervals | no
Start new session command | no
Event index counter for session | no
Timestamp on session | no
Asynchronous event sending | yes
Event sending retry | y
Plug-in architecture | no
Events are different classes | n/a
Events are different functions | n/a
Session pausable | n
Media tracking | n
Youtube tracking | n
Vimeo tracking | n
Ecommerce tracking | n

# OUT-OF-THE-BOX EVENTS
Self-describing event | yes
Unstructured event | no
Structured event | yes
Page view event | yes
Mobile screen view event | yes
Snowplow screen view event | no
eCommerce events (old) | yes
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
Push notification event | no
Deep link event | no
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
DeepLinkContext | no
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
Version | 1.4.0
Status | Actively Maintained
Repository | https://github.com/snowplow-incubator/snowplow-react-native-tracker
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/react-native-tracker/
Supported platforms | RN 0.65+, Android tracker v4.1, iOS tracker v4.1, Android, AndroidTV, iOS, tvOS