# DEV GUIDES
API docs | yes
Good docs (clear page titles, easy to use) | no
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
Implicit endpoint url (default POST and HTTPS) | no
Custom POST path | 
Custom connection timeout | 
Custom request headers | 
Custom NetworkConnection/HttpClient | 
Custom max payload size (to deprecate?!) | no
Custom batch size | yes
EventStore has maximum limit | yes
Events are buffered in memory or db | yes
Custom EventStore | 
Provide stop retry for HTTP error codes | no
Custom threadpool size | 
Request callback (event sending callback) | 
Server anonymisation option | 
Cookie jar | 

# TRACKER CONFIGURATION
Namespace mandatory | no
Configurable AppID | yes
Configurable logger | yes
Anonymous tracking | no
Autotracking session entity | no
Autotracking application entity | no
Autotracking platform entity | no
Autotracking screenView event | 
Autotracking screen entity | no
Autotracking lifecycle events | no
Autotracking exception events | 
GDPR entity configuration | no
Global contexts | no
Autotracking page entity | 
Autotracking geolocation entity | 
Autotracking deeplink entity | 
Choose which platform entity properties to track | 

# SESSION CONFIGURATION
Foreground/background timeout | no
onSessionUpdate callback | 

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | yes
Set user-agent | yes
Set custom userID | yes
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
Snowplow API (tracker internals hidden inside Snowplow class) | no
Remote configuration | no
Multiple tracker instances | 
Track an event on multiple trackers at once | 
Event_id and timestamp not overridable | no
True_timestamp available | no
Sent_timestamp available | yes
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | no
Emitter pausable | no
Flush events command | yes
Flush at regular time intervals | 
Start new session command | n/a
Event index counter for session | n/a
Timestamp on session | n/a
Asynchronous event sending | yes
Retry with exponential back-off | no
Plug-in architecture | no
Events are different classes | 
Events are different functions | 
Session pausable | 
Media tracking | 
Ecommerce tracking | 