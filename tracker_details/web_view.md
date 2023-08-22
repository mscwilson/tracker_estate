# DEV GUIDES
API docs | no
Good docs (clear page titles, easy to use) | yes
Basic demo app that just sends events | no
Instrumentation apps ("realistic") | yes
Release notes on Github | 

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | no
Automated deploy to package manager | yes
Automated deploy to Github | 

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | yes
Custom connection timeout | 
Custom request headers | 
Custom NetworkConnection/HttpClient | 
Custom max payload size (to deprecate?!) | 
Custom batch size | 
EventStore has maximum limit | 
Events are buffered in memory or db | 
Custom EventStore | 
Provide stop retry for HTTP error codes | 
Custom threadpool size | 
Request callback (event sending callback) | 
Server anonymisation option | 
Cookie jar | 

# TRACKER CONFIGURATION
Namespace mandatory | 
Configurable AppID | 
Configurable logger | 
Anonymous tracking | 
Autotracking session entity | 
Autotracking application entity | 
Autotracking platform entity | 
Autotracking screenView event | 
Autotracking screen entity | 
Autotracking lifecycle events | 
Autotracking exception events | 
GDPR entity configuration | 
Global contexts | 
Autotracking page entity | 
Autotracking geolocation entity | 
Autotracking deeplink entity | 
Choose which platform entity properties to track | 

# SESSION CONFIGURATION
Foreground/background timeout | 
onSessionUpdate callback | 

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | 
Event Subject - for that event only | 
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

# EVENT LOSS CALLBACKS
Sending failure callback | 
Drop events callback | 

# FEATURES
Snowplow API (tracker internals hidden inside Snowplow class) | 
Remote configuration | 
Multiple tracker instances | 
Track an event on multiple trackers at once | 
Event_id and timestamp not overridable | 
True_timestamp available | 
Sent_timestamp available | 
Track returns event_id | 
Automatically track general atomic fields | 
Tracker pausable | 
Emitter pausable | 
Flush events command | 
Flush at regular time intervals | 
Start new session command | 
Event index counter for session | 
Timestamp on session | 
Asynchronous event sending | 
Retry with exponential back-off | 
Plug-in architecture | 
Events are different classes | 
Events are different functions | 
Session pausable | 
Media tracking | 
Ecommerce tracking | 