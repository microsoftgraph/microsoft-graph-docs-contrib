# Use the Microsoft Graph API to work with Project Rome 

Project Rome is the code name for Microsoft's cross-device experiences platform. This toolkit allows an app on a client (local) or service, in the case of Microsoft Graph, to interact with apps and services on a host (remote) device that is signed in with or receptive to the Microsoft account on the client device. This allows you to program cross-device and cross-platform experiences that are centered around user tasks rather than devices. Two key components are exposed via Microsoft Graph to enable these experiences: devices and activities. To learn more about the capabilities of Project Rome, see [Project Rome](http://aka.ms/projectrome) in GitHub. 

## Devices via RemoteSystems

RemoteSystems in Microsoft Graph enables you to:

- Discover and connect to user's devices
- Remotely launch apps on these devices
- Send messages to your apps on these devices

Using these capabilities, you can build apps that can use the user's environment and create rich experiences that transcend a single device. With these APIs, you can extend the experience; for example, you can extend your app or website to launch on a bigger screen. You can also augment the experience by creating a companion experience for an app or website on another of the user's devices. This can help provide another view of the functionality in their app.

To use this functionality via Microsoft Graph to communicate with other Windows devices, you use the following APIs:

- [List the user's devices](../api/user_list_devices.md)
- [Send a command to a device](../api/send_device_command.md)
- [Get command status](../api/get_device_command_status.md)


## Activities

The UserActivity APIs enable you to drive engagement in your apps across devices and platforms. A UserActivity is the unit of user engagement in Windows, and consists of three components: 

- A deep link
- Visuals
- Content metadata

When a UserActivity session is created by an application, it will begin to accrue engagement records when users interact with the application.
When an application publishes UserActivity objects, the UserActivity object will show up in some of the new UI surfaces in Windows; for example, Cortana Notifications and Timeline. You can specify both rich metadata (to allow activities to be presented in just the right context) and rich visuals (using Adaptive Card markup) in your UserActivity objects.


To use this functionality via Microsoft Graph to create user activities, you use the following APIs:

- [Create or replace an activity](../api/projectrome_put_activity.md)
- [Publish a user activity] 
<!-- - <add other relevant api's or point to activity guide.> -->


