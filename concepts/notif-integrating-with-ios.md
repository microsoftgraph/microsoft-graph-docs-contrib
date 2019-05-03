
# Integrating your iOS app with the client-side SDK for user notifications

## Summary

Now that you've completed [app registrations](notif-integration-app-registration.md) in the Azure Portal and [Cross-Device Experiences onboarding](notif-integration-cross-device-experiences-onboarding) in Microsoft Partner Dev Center, let's move on to code integration. 

This page captures the steps for integrating your client app with the client-side SDK for iOS apps.  

With the client-side SDK, your app can perform the necessary registration steps in order to start receiving notifications published from your app server targeted at the current logged-in user. The SDK is then used to manage the notifications on the client side including receiving new incoming notifications, managing the state of notifications in order to achieve scenarios like "universal dismiss", and retrieving full notification history. 

## New incoming notification flow

For receiving new incoming notifications, here is an illustration of the data flow:

![New notification flow for iOS app](images/notif-new-notification-ios.png)

In this diagram, you can see a few components involved in this process:
* App server - this is the backend of your application;
* App client - this is the frontend of your application, being a Windows UWP app, an Android app, or an iOS app;
* Microsoft Graph notifications - this is the service component that enables user notifications to be published, stored, and synced across different instances of app clients across devices and platforms;
* APNs - Apple Push Notification Service, this is the push notification service natively provided by Apple for iOS apps. It is leveraged by Microsoft Graph notifications to signal the iOS app clients about user notification data changes.  

Here is a break down for the steps highlighted in the diagram: 
* Step 1. (Application logic) This step captures what triggers the notification to be published to the user. This is app-specific logic, it could be an event or data update about something else inside Microsoft Graph, such as a new calendar event or a new task assignment, or basically anything your app service wants to notify the user about.
* Step 2. App server publishes a notification to the targeted user using the notification API on Microsoft Graph. For more details on how to create and publish a notification, see guidance on [server side integration](notif-integrating-app-server.md).
* Step 3. Upon receiving the web request containing the new notification, Microsoft Graph notifications persists the content of the notification securely in the cloud for this app and this user.
* Step 4. For each app client instance subscribing to receive notifications for this user, Microsoft Graph notifications sends a signal to notify the app client, via the native push service provided by the OS/system this application is implemented on. In this case, the application is an iOS app, and we leverage [APNs background update notification](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW8) to send the signal. 
* Step 5. Once the application is waken up by the incoming push notification, it asks the SDK to fetch for the changes in the user notification store. 
* Step 6 and 7. The SDK establishes a secure and compliant connection with the user notifications store in Microsoft Graph and retrieves the data changes - in this case, the changes are the new notification contents. 
* Step 8. The SDK fires event callbacks to notify the app once the changes are successfully retrieved. 
* Step 9. (Application logic) This step captures what your app chooses to do inside the event callback. Usually, this results in local app data changes and local UI updates. In this case, since there is new notification content available, the app should usually construct an iOS alert in notification center to notify the user.

## Notification update flow

One of the main benefits for using Microsoft Graph notifications is that it persists notifications in the cloud securely and turns them into a stateful resource type. Therefore, it helps your application to easily manage and sync the correct state of the notifications across different devices for the same logged in user in a cross-device scenario. When a notification is marked as dismissed, or marked as read on one device, the other devices can be notified in real-time so "handled once, dismissed everywhere" can become a true promise as part of the notification experience for your users. 

For changing the state of a notification or deleting the notification on one device, and receiving/handling the state change or the deletion on another device, here is an illustration of the flow:

![Update notification flow for iOS app](images/notif-notification-update-ios.png)

Observe that the second part of the flow is very similar to the flow for handling new incoming notifications. This is by design - the SDK's programming pattern is designed in a way that the application client can handle all types of user notification data changes (such as new incoming notifications, notification state changes, notification deleted, etc.) in a similar way. 

Here is a break down for the steps highlighted in the diagram:

* Step 1 and 2. (Application logic) These steps captures what triggers the notification to be changed or deleted. This is app-specific logic. In general, any event can trigger a notification to change. Currently, we expose 2 properties regarding state changes - UserActionState and ReadState, but your application ultimately gets to decide the definition of these states and when they need to be updated. For example, when a user dismissed the notification popup, you can update the UserActionState to be Dismissed. When a user clicked on the notification popup and launched the app to consume corresponding app content, you can update the UserActionState to be Activated and update the ReadState to be Read. 
* Step 3. Once the corresponding API is called to update or delete a notification, the SDK will call into the user notification store in the cloud in order to fan-out this change to the other app client instances with the same logged in user. 
* Step 4. Upon receiving the update/delete request from a client, Microsoft Graph notifications will update the notification store accordingly, and identify the other app client instances who subscribed to this change.
* Step 5. For each app client subscription, Microsoft Graph notifications sends a signal to notify the app client, via the native push service provided by the OS/system this application is implemented on. In this case, the application receiving the change update is an iOS app, and we leverage [APNs background update notification](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW8) to send the signal. 
* Step 6. Once the application is waken up by the incoming push notification, it asks the SDK to fetch for the changes in the user notification store. 
* Step 7 and 8. The SDK establishes a secure and compliant connection with the user notifications store in Microsoft Graph and retrieves the data changes - in this case, the changes are notification state updates or notification deletions. 
* Step 9. The SDK fires event callbacks to notify the app once the changes are successfully retrieved. 
* Step 10. (Application logic) This step captures what your app chooses to do inside the event callback. Usually, this results in local app data changes and local UI updates. In this case, since there are notification updates, the app usually should update the UI locally to reflect the state change. For example, if a notification is marked as activated, you can remove the corresponding alert UI inside iOS's notification center in order to achieve "handled once, dismissed everywhere". 


For more information about Microsoft Graph notifications and how it enables a human-centric notification experience, see [Microsoft Graph Notifications Overview](notifications-concept-overview.md).
For more information about the steps required to integrate with Microsoft Graph notifications from end to end, see Microsoft Graph notifications [integration overview](notif-integration-e2e-overview.md).

Now let's take a look at a step by step breakdown of what you need to do to integrate with Microsoft Graph notifications SDK in your Android app. 

## Adding the SDK to your project

The simplest way to add the Connected Devices Platform to your iOS app is by using the [CocoaPods](https://cocoapods.org/) dependency manager. Go to your iOS project's *Podfile* and insert the following entry:

```ObjectiveC
platform :ios, "10.0"
workspace 'iOSSample'

target 'iOSSample' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

	pod 'ProjectRomeSdk'

  # Pods for iOSSample
```

> [!NOTE]
> In order to consume CocoaPod, you must use the _.xcworkspace_ file in your project.

## Initializing the Connected Device Platforms

The client-side SDK is built on top of an infrastructure called Connected Device Platform. Before any feature can be used, the platform must be initialized within your app. The initialization steps should occur in your **AppDelegate** method, because they are required before the notification scenarios can take place.

You must construct and initialize the platform by instantiating the [**MCDConnectedDevicesPlatform**](https://docs.microsoft.com/en-us/windows/project-rome/objectivec-api/connecteddevices/mcdconnecteddevicesplatform) class. Before doing that, make sure to hook up event handlers because once platform is started the events may begin to fire. 

Sample in Objective C:

```ObjectiveC
MCDConnectedDevicesPlatform* platform = [MCDConnectedDevicesPlatform new];
        
[platform.accountManager.accessTokenRequested subscribe:^(MCDConnectedDevicesAccountManager* _Nonnull manager, MCDConnectedDevicesAccessTokenRequestedEventArgs* _Nonnull args) {
    // implement the callback;
}];
        
[self.platform.accountManager.accessTokenInvalidated
    subscribe:^(MCDConnectedDevicesAccountManager* _Nonnull manager __unused,
        MCDConnectedDevicesAccessTokenInvalidatedEventArgs* _Nonnull request) {
    // implement the callback;
}];
        
[self.platform.notificationRegistrationManager.notificationRegistrationStateChanged subscribe:^(MCDConnectedDevicesNotificationRegistrationManager* _Nonnull manager __unused, MCDConnectedDevicesNotificationRegistrationStateChangedEventArgs* _Nonnull args) {
    // implement the callback
}];
        
[platform start];
```

### Handling account access token

All the web calls the SDK makes, including retrieving the content of a new incoming notification, updating notification states, and more, are essentially reading from or writing to the user's data, thus always require a valid access token. The SDK requires you to handle the below events - invoked when an access token is requested or invalidated to make sure that once the platform is successful initialized, your access token for the user is handled correctly. 

#### accessTokenRequested

A full implementation can be found in the [iOS sample app](https://github.com/Microsoft/project-rome/blob/master/iOS/samples/GraphNotifications/GraphNotificationsSample/ConnectedDevicesPlatformManager.m). 

#### accessTokenInvalidated

A full implementation can be found in the [iOS sample app](https://github.com/Microsoft/project-rome/blob/master/iOS/samples/GraphNotifications/GraphNotificationsSample/ConnectedDevicesPlatformManager.m). 

```ObjectiveC
[platform.accountManager.accessTokenInvalidated
    subscribe:^(MCDConnectedDevicesAccountManager* _Nonnull manager __unused,
        MCDConnectedDevicesAccessTokenInvalidatedEventArgs* _Nonnull request) {
}];
```

### Handling push registration expiration 

Microsoft Graph notifications leverages the native push platform on iOS - APNs, to signal the client application on user notifications data changes. This happens when new incoming notifications are published from your app server, or when any notification's state is updated on a different device with the same logged in user in a cross-device scenario. 

Therefore, a valid APNs token that allows background update notifications to come through successfully is required, below event callback handles APNs push token expirations. 

#### notificationRegistrationStateChanged

A full implementation can be found in the [iOS sample app](https://github.com/Microsoft/project-rome/blob/master/iOS/samples/GraphNotifications/GraphNotificationsSample/ConnectedDevicesPlatformManager.m). 

## Logging in your user

Microsoft Graph notifications, like many other resource types inside Microsoft Graph, are centralized around users. In order for your app to subscribe to and start receiving notifications for the logged in user, you first need to obtain a valid Oauth token to be used in the registration process. You may choose to use your preferred method of generating and managing the Oauth tokens. The sample app used ADAL to achieve this. 

If you're using an MSA, you will need to include the following scopes in your sign-in request: `"wl.offline_access"`, `"ccs.ReadWrite"`, `"wns.connect"`, `"asimovrome.telemetry"`, and `"https://activity.windows.com/UserActivity.ReadWrite.CreatedByApp"`. 

If you're using an AAD account, you'll need to request the following audience: `"https://cdpcs.access.microsoft.com"`.

## Adding the user account to the platform 

You need to register the logged in user account with the SDK, which involves adding the account and registering a push channel in order to receive the initial push notifications through APNs. For more details, please see the [prepareAccountAsync](https://github.com/Microsoft/project-rome/blob/master/iOS/samples/GraphNotifications/GraphNotificationsSample/ConnectedDevicesPlatformManager.m) method in sample.

```ObjectiveC
MCDConnectedDevicesPlatform* platform = [MCDConnectedDevicesPlatform new];
MCDConnectedDevicesAccount* mcdAccount = [MCDConnectedDevicesAccount new];

[platform.accountManager addAccountAsync:mcdAccount callback:adapter]; 
```

## Subscribing to receive user's notifications 

You need to instantiate a UserDataFeed object for your application for this logged in user. Your application is identified by the cross-platform app id you provided during the [Cross-Device Experiences onboarding](notif-integration-cross-device-experiences-onboarding.md).

```ObjectiveC
// Initialize the feed and subscribe for notifications
MCDUserDataFeed* feed = [MCDUserDataFeed getForAccount:account
                        platform:platform
                        activitySourceHost:APP_HOST_NAME];

NSArray<MCDUserDataFeedSyncScope*>* syncScopes = @[ [MCDUserNotificationChannel syncScope] ];
[feed subscribeToSyncScopesAsync:syncScopes
        callback:^(BOOL success __unused, NSError* _Nullable error __unused) {
    // Start syncing down notifications
    [feed startSync];
}];
```

## Receiving and managing user notifications

In the flow diagram above we illustrated the programming patterns to handle a new incoming notification from an app server and a notification update or deletion initiated from another app client instance are very similar. Below shows the steps for handling these data changes. 

### Handling incoming push notification signal

All types of user notification data changes generate a signal that gets delivered to the app clients as a push notification. In the case of an iOS app the signal is delivered as a APNs background update notification. Upon receiving the data message signal the app should call **TryParse** to trigger the SDK to fetch from the Microsoft Graph notifications service for the actual data changes.

```ObjectiveC
// App running in background and received a push notification, launched by user tapping the alert view
MCDConnectedDevicesNotification* notification = [MCDConnectedDevicesNotification tryParse:notificationInfo];
if (notification != nil) {
    [_platformManager.platform processNotificationAsync:notification
            completion:^(NSError* error __unused) {
        // NOTE: it may be useful to attach completion to this async in order to know when the
        // notification is done being processed.
        // This would be a good time to stop a background service or otherwise cleanup.
    }];
} else {
    NSLog(@"Remote notification is not for ConnectedDevicesPlatform, skip processing");
}
```

### Handling user notification data changes

After the SDK successfully completes fetching the data changes, an event callback is invoked and the app client is expected to handle notification creations/updates/deletions.

```ObjectiveC
[reader readBatchAsyncWithMaxSize:100 completion:^(NSArray<MCDUserNotification *> * _Nullable notifications,
                                                    NSError * _Nullable error) {
    if (error) {
    } else {
        for (MCDUserNotification* notification in self.notifications) {
		// Handle notification change based on change type;
		}
        }
    }
}];
```

### Update state of a notification

If a notification state change is initiated from this app client instance (for example, if the toast notification popup on this device is activated by the user), the app needs to call the SDK to update the notification's state in order to have this state change synced across all devices used by the same user. 

```ObjectiveC
- (void)dismissNotification:(MCDUserNotification*)notification {
    if (notification.userActionState == MCDUserNotificationUserActionStateNoInteraction) {
        [self dismissNotificationFromTrayWithId:notification.notificationId];
        notification.userActionState = MCDUserNotificationUserActionStateDismissed;
        [notification saveAsync:^(__unused MCDUserNotificationUpdateResult * _Nullable result, __unused NSError * _Nullable error) {
		// handle result;
         }];
    }
}
```

### Delete a notifications

If a notification deletion is initiated from this app client instance (for example, if the task corresponding to this notification is marked as complete and is removed from your app's database), the app needs to call the SDK to delete the notification in order to have this delete operation synced across all devices used by the same user. 

A notification is removed from the user notification store only if it is expired or explicitly deleted. A user notification is not deleted when you update the UserActionState to be Dismissed, since the semantic definition of UserActionState is defined by the application itself.

```Obj-C
- (void)deleteNotification:(MCDUserNotification*)notification {
    [_channel deleteUserNotificationAsync:notification.notificationId
     completion:^(__unused MCDUserNotificationUpdateResult* _Nullable result, NSError* _Nullable error) {
        // handle result;
     }];
}
```

## See also

### [API reference](https://docs.microsoft.com/en-us/windows/project-rome/notifications/api-reference-for-ios/) for the full set of APIs related to notification features in the SDK. 
### Complete [client-side sample](https://github.com/Microsoft/project-rome/tree/master/iOS/samples/GraphNotifications) for Android apps.
### [App server sample](notif-integrating-app-server.md) for publishing notifications. 
