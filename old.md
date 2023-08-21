Details	JavaScript (tag/browser)	Mobile (Android)	Mobile (iOS)	.NET
Type	client	client	client	client+server
Version	3.5.0	5.0.0	5.0.0	1.1.0
Status	Actively Maintained	Actively Maintained	Actively Maintained	Maintained
Repository	https://github.com/snowplow/snowplow-javascript-tracker	https://github.com/snowplow/snowplow-android-tracker	https://github.com/snowplow/snowplow-objc-tracker	https://github.com/snowplow/snowplow-dotnet-tracker
Documentation	https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/javascript-tracker/	https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/node-js-tracker/	https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/objective-c-tracker/	https://docs.snowplowanalytics.com/docs/collecting-data/collecting-from-own-applications/net-tracker/
Supported platforms		Android, AndroidTV	iOS, tvOS, watchOS, macOS	.NET Standard 1.4+
				
DEV GUIDES				
API docs	yes	yes	yes	no
Well-written docs	no	yes	yes	no
Basic demo app	yes	yes	yes	no
Realistic instrumentation apps	no	yes	yes	no
				
TESTS AND CI				
Automated unit tests	yes	yes	yes	yes
Integration/validation tests	yes	no	no	no
Automated demo building	n/a	yes	yes	
Automated deploy	yes	yes	no	
				
EMITTER CONFIGURATION				
Implicit endpoint url (default POST and HTTPS)	yes	yes	yes	
Custom POST path	yes	yes	yes	
Connection timeout	yes	yes	no	
Custom headers	yes	yes	yes	
Customizable NetworkConnection	n/a	yes	yes	
Max payload size (to deprecate?!)	yes	yes	yes	yes
Batch size	yes	yes	yes	
EventStore with max limit	yes	no	no	
"Default EventStore
(In memory or db)"	yes	yes	yes	yes
Customizable EventStore	n/a	yes	yes	
Stop retry for HTTP error codes	no	no	no	no
Cookie jar				
				
TRACKER CONFIGURATION				
Namespace mandatory	yes	yes	yes	
Configurable AppID	yes	yes	yes	yes
Configurable logger	yes	yes	yes	yes
Anonymous tracking	yes	no	no	no
Autotracking session	yes	yes	yes	
Autotracking application context	no	yes	yes	
Autotracking platform context	yes	yes	yes	yes
Autotracking screenView event	no	yes	yes	
Autotracking screen context	no	yes	yes	no
Autotracking lifecycle	no	yes	yes	no
Autotracking exceptions	yes	yes	yes	
GDPR configuration	yes	yes	yes	no
Global context (or evolution)	yes	yes	yes	no
				
SESSION CONFIGURATION				
Session timeout	yes	yes	yes	
				
SUBJECT CONFIGURATION				
Tracker Subject	no	yes	yes	yes
Event Subject	n/a	n/a	n/a	no
Set user-agent		yes	yes	
Set custom userID		yes	yes	
Set timezone		yes	yes	
Set language		yes	yes	
				
CALLBACKS				
Sending failure callback		no	no	
New session callback		yes	yes	
Drop events callback		yes	yes	
				
FEATURES				
Simplified API (Tracker+Emitter as Core tracker)	no	yes	yes	no
Remote configuration	no	yes	yes	no
Multiple tracker instances	yes	yes	yes	
Track an event on multiple trackers	yes	no	no	
Event_id and timestamp not overridable		yes	yes	
True_timestamp available	yes	yes	yes	
Sent_timestamp available	yes	yes	yes	yes
Track returns event_id	no	yes	yes	no
Automatically track general atomic fields	yes	yes	yes	yes
Tracker pausable		yes	yes	
Emitter pausable		yes	yes	
Flush command	yes	yes	yes	
Flush at regular intervals	no	no	no	
Start new session command	yes	yes	yes	
Event index counter for session	yes	yes	yes	no
Timestamp on session	yes	yes	yes	no
Asynchronous event sending	yes	yes	yes	yes
Retry with exponential back-off	no	yes	yes	yes
Plug-in architecture	yes	no	no	no
				
				
OUT-OF-THE-BOX EVENTS				
Page view event	yes	yes	yes	yes
Mobile screen view event	no	yes	yes	no
Snowplow screen view event	yes	no	no	yes
Structured event	yes	yes	yes	yes
Unstructured event	no	no	no	yes
Self-describing event	yes	yes	yes	no
eCommerce event (old)	yes	yes	yes	yes
Timing event	yes	yes	yes	yes
Page ping event	yes	no	no	no
Link click event	yes	no	no	no
Form change event	yes	no	no	no
Form submit event	yes	no	no	no
Form focus event	yes	no	no	no
Site search event	yes	no	no	no
Add to cart event	yes	no	no	no
Remove from cart event	yes	no	no	no
Error/exception event	yes	yes	yes	no
App lifecycle event	n/a	yes	yes	n/a
Installation event	n/a	yes	yes	n/a
Consent granted event	yes	yes	yes	no
Consent withdrawn event	yes	yes	yes	no
Push notification event	n/a	yes	yes	n/a
Deep link event	n/a	yes	yes	n/a
Social media event	yes	no	no	no
Ad impression event	yes	no	no	no
Ad click event	yes	no	no	no
Ad conversion event	yes	no	no	no
media tracking (various)	yes	no	no	no
ecommerce (various)				
				
OUT-OF-THE-BOX ENTITIES				
DesktopContext	no	n/a	n/a	yes
MobileContext / platformContext	yes	yes	yes	yes
DeviceContext	no	no	no	no
ApplicationContext	no	yes	yes	no
GeoLocationContext	yes	yes	yes	yes
SessionContext	yes	yes	yes	no
ScreenContext	no	yes	yes	no
gdprContext	yes	yes	yes	no
DeepLinkContext	no	yes	yes	no
WebPageContext	yes	no	no	no
PerformanceTimingContext	yes	no	no	no
gaCookiesContext	yes	no	no	no
ClientHintsContext	yes	no	no	no
OptimiselyXSummaryContext	yes	no	no	no
				
INTERNAL NOTES				
				
Fixes				
Refactor ScreenView using a single schema for all the trackers	no	no	no	no
Deprecate eCommerce transaction events	no	no	no	no
				
				
New features				
Wait queue until tracker ready (JS #401)	no	no	no	no
Mobile hybrid apps with interaction between mobile and JS trackers	n/a	no	no	n/a
Interaction between client and server trackers	no	no	no	no
Diagnostic events (tracking errors and informing config changes)	no	yes	yes	no
[Mobile] Application install store attribution	n/a	no	no	n/a
A/B testing (Optimizely?)	yes	no	no	n/a
Cookies jar for client trackers	yes	yes	yes	no
