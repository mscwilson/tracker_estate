# DEV GUIDES
API docs | yes
Good docs (clear page titles, easy to use) | no
Basic demo app that just sends events | no
Instrumentation apps ("realistic") | no
Release notes on Github | 

# TESTS AND CI
Automated unit tests | yes
Integration/validation tests | no
Automated demo building | n/a
Automated deploy to package manager | yes
Automated deploy to Github | 

# EMITTER/NETWORK CONFIGURATION
Implicit endpoint url (default POST and HTTPS) | yes
Custom POST path | 
Custom connection timeout | 
Custom request headers | 
Custom NetworkConnection/HttpClient | 
Custom max payload size (to deprecate?!) | no
Custom batch size | yes
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
Configurable logger | no
Anonymous tracking | yes
Autotracking session entity | yes
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
Foreground/background timeout | yes
onSessionUpdate callback | 

# SUBJECT CONFIGURATION
Tracker Subject - adds to all events | yes
Event Subject - for that event only | no
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
Snowplow API (tracker internals hidden inside Snowplow class) | no
Remote configuration | no
Multiple tracker instances | yes
Track an event on multiple trackers at once | yes
Event_id and timestamp not overridable | 
True_timestamp available | yes
Sent_timestamp available | yes
Track returns event_id | no
Automatically track general atomic fields | yes
Tracker pausable | 
Emitter pausable | 
Flush events command | yes
Flush at regular time intervals | no
Start new session command| yes
Event index counter for session | no
Timestamp on session | no
Asynchronous event sending | yes
Retry with exponential back-off | yes
Plug-in architecture | yes
Events are different classes | 
Events are different functions | 
Session pausable | 
