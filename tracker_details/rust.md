# DEV GUIDES
API docs | yes
Good docs (clear page titles, easy to use) | yes
Basic demo app that just sends events | no
Instrumentation apps ("realistic") | no
Release notes on Github | 

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | yes
Automated demo building | no
Automated deploy to package manager | yes
Automated deploy to Github | 

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | no
Custom connection timeout | yes
Custom request headers | no
Custom NetworkConnection/HttpClient | no
Custom max payload size (to deprecate?!) | no
Custom batch size | yes
EventStore has maximum limit | yes
Events are buffered in memory or db | yes
Custom EventStore | yes
Provide stop retry for HTTP error codes | yes
Custom threadpool size | 
Request callback (event sending callback) | 
Server anonymisation option | 
Cookie jar | 

# TRACKER CONFIGURATION
Namespace mandatory | yes
Configurable AppID | yes
Configurable logger | yes
Anonymous tracking | no
Autotracking session entity | no
Autotracking application entity | no
Autotracking platform entity | no
Autotracking screenView event | no
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | no
GDPR entity configuration | no
Global contexts | no
Autotracking page entity | 
Autotracking geolocation entity | 
Autotracking deeplink entity | 
Choose which platform entity properties to track | 

# SESSION CONFIGURATION
Foreground/background timeout | no
onSessionUpdate callback | 
Foreground/background callbacks | 

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | yes
Set user-agent | no
Set custom userID | no
Set timezone | yes
Set language | yes
Set networkUserid | 
Set domainUserid | 
Set ipAddress | 
Set screen resolution | 
Set screen viewport | 
Set colour depth | 
Set domain sessionId | 
Set domain sessionIndex | 

# EVENT LOSS CALLBACKS
Sending failure callback | no
Drop events callback | no

# FEATURES
Snowplow API (tracker internals hidden inside Snowplow class) | 
Remote configuration | no
Multiple tracker instances | yes
Track an event on multiple trackers at once | no
Event_id and timestamp not overridable | yes
True_timestamp available | 
Sent_timestamp available | yes
Track returns event_id | yes
Automatically track general atomic fields | yes
Tracker pausable | no
Emitter pausable | no
Flush events command | yes
Flush at regular time intervals | no
Start new session command | no
Event index counter for session | no
Timestamp on session | no
Asynchronous event sending | yes
Retry with exponential back-off | yes
Plug-in architecture | yes
Events are different classes | 
Events are different functions | 
Session pausable | 
Media tracking | 
Youtube tracking | 
Vimeo tracking | 
Ecommerce tracking | 

# OUT-OF-THE-BOX EVENTS
Self-describing event | yes
Unstructured event | yes
Structured event | yes
Page view event | no
Mobile screen view event | yes
Snowplow screen view event | yes
eCommerce events (old) | no
Timing event | no
Page ping event | no
Link click event | no
Form change event | no
Form submit event | no
Form focus event | no
Site search event | no
Add to cart event (old) | no
Remove from cart event (old) | no
Error/exception event | no
App lifecycle event | no
Installation event | no
Consent granted event | no
Consent withdrawn event | no
Push notification event | no
Deep link event | no
Social media event | no
Ad impression event | no
Ad click event | no
Ad conversion event | no
WebVitals event | no

# OUT-OF-THE-BOX ENTITIES
DesktopContext | no
MobileContext / platformContext | no
DeviceContext | no
ApplicationContext | no
GeoLocationContext | no
SessionContext | no
ScreenContext | no
gdpr/consent entity | no
DeepLinkContext | no
WebPageContext | no
PerformanceTiming entity | no
gaCookies entity | no
ClientHints entity | no
Optimisely entity | no
WebVitals | 
PrivacySandbox entity | 
PerformanceNavigationTiming entity | 

# DETAILS
Client/Server | client+server
Version | 0.2.0
Status | Early Release
Repository | https://github.com/snowplow/snowplow-rust-tracker
Documentation | https://docs.snowplow.io/docs/collecting-data/collecting-from-own-applications/rust-tracker/
Supported platforms | ?
