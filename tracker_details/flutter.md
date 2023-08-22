# DEV GUIDES
API docs | no
Good docs (clear page titles, easy to use) | no
Basic demo app that just sends events | no
Instrumentation apps ("realistic") | no
Release notes on Github | 

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | no
Automated deploy to package manager | yes
Automated deploy to Github | 

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | no
Custom connection timeout | no
Custom request headers | no
Custom NetworkConnection/HttpClient | no
Custom max payload size (to deprecate?!) | no
Custom batch size | no
EventStore has maximum limit | no
Events are buffered in memory or db | yes
Custom EventStore | no
Provide stop retry for HTTP error codes | no
Custom threadpool size | 
Request callback (event sending callback) | 
Server anonymisation option | 
Cookie jar | 

# TRACKER CONFIGURATION
Namespace mandatory | yes
Configurable AppID | yes
Configurable logger | yes
Anonymous tracking | no
Autotracking session entity | yes
Autotracking application entity | yes
Autotracking platform entity | yes
Autotracking screenView event | yes
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
Foreground/background timeout | yes
onSessionUpdate callback | 

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | n/a
Set user-agent | no
Set custom userID | no
Set timezone | no
Set language | no
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
Snowplow API (tracker internals hidden inside Snowplow class) | yes
Remote configuration | no
Multiple tracker instances | yes
Track an event on multiple trackers at once | no
Event_id and timestamp not overridable | yes
True_timestamp available | no
Sent_timestamp available | yes
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | no
Emitter pausable | no
Flush events command | no
Flush at regular time intervals | no
Start new session command | no
Event index counter for session | no
Timestamp on session | no
Asynchronous event sending | yes
Retry with exponential back-off | yes
Plug-in architecture | no
Events are different classes | 
Events are different functions | 
Session pausable | 
