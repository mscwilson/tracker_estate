# DEV GUIDES
API docs | yes 
Good documentation | no | it's terrible
Basic demo app | yes
Instrumentation apps ("realistic") | no
Release notes on Github | no

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | yes
Automated demo building | n/a
Automated deploy to package manager | yes
Automated deploy to Github | y

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | yes
Custom connection timeout | yes
Custom request headers | yes
Custom NetworkConnection/HttpClient | n/a
Custom max payload size (to deprecate?!) | yes
Custom batch size | yes
EventStore has maximum limit | yes
Events are buffered in memory or db | yes
Custom EventStore | n/a
Provide stop retry for HTTP error codes | yes
Custom threadpool size | n/a
Request callback (event sending callback) | no
Server anonymisation option | y
Cookie jar | 

# TRACKER CONFIGURATION
Namespace mandatory | yes
Configurable AppID | yes
Configurable logger | yes
Anonymous tracking | yes
Autotracking session entity | yes
Autotracking application entity | no
Autotracking platform entity | yes
Autotracking screenView event | no
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | yes
GDPR entity configuration | yes
Global contexts | yes
Autotracking page entity | 
Autotracking geolocation entity | y
Autotracking deeplink entity | n/a
Choose which platform entity properties to track | n


# SESSION CONFIGURATION
Has session | y
Foreground/background timeout | n/a
onSessionUpdate callback | y
Foreground/background callbacks | n/a

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | no
Event Subject - for that event only | n/a
Set user-agent | 
Set custom userID | 
Set timezone | 
Set language | 
Set networkUserid | 
Set domainUserid | 
Set ipAddress | 
Set screen resolution | 
Set screen viewport | 
Set colour depth | 
Set domain sessionId | 
Set domain sessionIndex | 
Set user fingerprint | 

# EVENT LOSS CALLBACKS
Sending failure callback | n
Drop events callback | n


# FEATURES
Snowplow API | no | the tracker internals are hidden though
Remote configuration | no
Multiple tracker instances | yes
Track an event on multiple trackers at once | yes
Event_id and timestamp not overridable | 
True_timestamp available | yes
Sent_timestamp available | yes
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | y
Emitter pausable | n/a
Flush events command | yes
Flush at regular time intervals | no
Start new session command | yes
Event index counter for session | yes
Timestamp on session | yes
Asynchronous event sending | yes
Event sending retry | yes, but | retry included in Got request library
Plug-in architecture | yes
Events are different classes | n
Events are different functions | y
Session pausable | n
Media tracking | yes
Youtube tracking | yes
Vimeo tracking | yes
Ecommerce tracking | yes

# OUT-OF-THE-BOX EVENTS
Self-describing event | yes
Unstructured event | no
Structured event | yes
Page view event | yes
Mobile screen view event | no
Snowplow screen view event | yes
eCommerce events (old) | yes
Timing event | yes
Page ping event | yes
Link click event | yes
Form change event | yes
Form submit event | yes
Form focus event | yes
Site search event | yes
Add to cart event (old) | yes
Remove from cart event (old) | yes
Error/exception event | yes
App lifecycle event | n/a
Installation event | n/a
Consent granted event | yes
Consent withdrawn event | yes
Push notification event | n/a
Deep link event | n/a
Social media event | yes
Ad impression event | yes
Ad click event | yes
Ad conversion event | yes
WebVitals event | yes

# OUT-OF-THE-BOX ENTITIES
DesktopContext | no
MobileContext / platformContext | yes
DeviceContext | no
ApplicationContext | no
GeoLocationContext | yes
SessionContext | yes
ScreenContext | no
gdpr/consent entity | yes
DeepLinkContext | no
WebPageContext | yes
PerformanceTiming entity | yes
gaCookies entity | yes
ClientHints entity | yes
Optimisely entity | yes
WebVitals | yes
PrivacySandbox entity | yes
PerformanceNavigationTiming entity | y

# DETAILS
Client/Server | client
Version | 3.14.0
Status | Actively Maintained
Repository | https://github.com/snowplow/snowplow-javascript-tracker
Documentation | https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/javascript-tracker/
Supported platforms | web
