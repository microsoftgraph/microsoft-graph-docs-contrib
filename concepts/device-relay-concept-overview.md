# Using the device replay API in Microsoft Graph (preview)

Nowadays people have multiple devices they interact with on a daily basis. Furthermore, many of today's productivity tasks and entertainment activities are started on one device and continued on another. To meet your customers' needs, your apps need to seamlessly span devices and platforms. 
The Device Relay APIs enable app developers to deliver seamless experiences to their users by making it possible for them to actively transfer an experience from one device to another or enhance it by using multiple devices at once. This is done via in-app actions (e.g. a button or selection in your app) that call the Device Relay APIs to discover the user's devices, and enables him/her to launch and message your app on those other devices.

## Why integrate with device relay?
### Empower your users to make the most of their experience with your app by launching it on other devices and enable cross-device messaging
The device relay API enables your app to register itself, and discover, command, and message your app on the user's devices. By doing this you can make the tasks your customers work on the central focus. They can work on the device that is most convenient for them by discovering it and transferring tasks to it. They can also enhance an ongoing experience with your app by using other devices around them.

You can use the device relay API for companion devices, or remote control scenarios. Use the messaging capabilities to create an app channel between two devices to send and receive custom messages. For example, you can enable your customers to use their phone to control playback on a TV. You could also provide a companion app in a productivity scenario by displaying context-based commonly used actions on a phone while your users works on the main view of your app in the PC.

Your customers can also actively transfer an experience from one device to another by performing an action in your app. For example, a user might be watching a live broadcast on her phone while on the bus, but when she gets home she wants to transfer playback to the PC in her living room. Productivity scenarios are also supported by Device Relay. 

Below are some use cases of how developers could use these APIs:  

**Extend the experience:** A developer could extend their app by providing UX to discover devices and to launch their app on those devices. For example, the user could be working on a purchase order on her phone, discover the PC in her office, and launch the app there to finish entering the purchase order.  

**Augment the experience:** A developer could create a companion experience for their app on another of the user’s devices. or example, the app could include UX to launch itself on other devices. In a game, the user could launch the app to a device with a larger screen (e.g. from a PC to a Xbox). The Xbox could present a full view of the game (e.g. a first-person view), while the device with the smaller screen could present a different view with additional context (e.g. a top level view of the game level showing the player and opponents' locations).  

**Enrich the experience:** A developer could add additional controlling abilities to their app. An example of this could be providing remote control abilities for the main app from a companion device. For example, when the user launches an app from one device to another, the target device could show the full experience (e.g. a 3D model in a design app), while the source device could show a list of the most common actions given the state of the app on the target device (e.g. rotate, resize, color palette, etc.)

## See also

- [Cross-device experiences in Microsoft Graph](cross-device-concept-overview.md)
- [Learn more about the device relay API](../api-reference/beta/resources/project_rome_overview.md)
- [Learn more about Project Rome](http://aka.ms/projectrome)
