# Microsoft Information Protection labeling overview

Microsoft Information Protection labeling helps organizations to classify, label, and protect data based on [sensitivity](https://docs.microsoft.com/Office365/SecurityCompliance/sensitivity-labels). Organizations use labels to aid users in understanding the importance of information that is being handled, aid compliance adminstrators in discovering where sensitive information lives, and to aid security administrators in deploying data access and data loss prevention policies based on more rich label information.

## Why integrate Microsoft Information Protection? 

### Integrate with the ubiquitous labeling platform, servicing millions of users and devices

More than a million organizations with tens of millions of users use Microsoft Information Protection to classify, label, and protect data.  In addtion to Office 365, various data loss prevention (DLP) services, business intelligence platforms, and software-as-a-service (SaaS) solutions have embrace Microsoft Information Protection labeling to provide a richer data classification experience. **!!LINK!!**

### Label information in line of business applications

Enterprise developers use Microsoft Information Protection to label and protect sensitive customer information on export from line of business applications to ensure the safety of customer information. Connecting your applications to the Microsoft Information Protection ecosystem enables applications to apply, update, and delete [sensitivity labels](https://docs.microsoft.com/Office365/SecurityCompliance/sensitivity-labels) in your own application data, without the overhead of integrating a full SDK.

## What can I do with Microsoft Information Protection label APIs in Microsoft Graph? 

### Discover labels available to a user or organization

With Microsoft Graph you can access the [sensitivity labels]() available to a user or the organization. Labels are applied by applications and services to data at rest or in motion, helping users and downstream applications and services to understand the sensitivity of the information they're handling.

### Understand how to apply labels

By providing information on the existing and desired sensitivity label, the REST API can intelligently inform your application of the [actions]() that should be taken to correctly apply the label. This includes actions such as [metadata]() application, [watermark]() generation, [protection](), and more.

### Interpret labels applied to data

Applications consuming information already that already has a [sensitivity label metadata]() applied can use the `extractLabel` API to resolve label metadata to a Microsoft Information Protection [sensitivity label](). Use the label to identify the actions that should be taken by the application when handling or consuming the labeled data. 

## Explore the Microsoft Information Protection APIs

Use the Microsoft Graph Explorer to try out the Microsoft Information Protection APIs with your own organizational labels.

!TODO!
To make Microsoft Information Protection API calls from the Graph Explorer, choose Show more samples in the column on the left. Use the menu to toggle OneNote On. You will also need to enable the appropriate permissions. Under your account name in the menu on the left, choose modify permissions. For more information about OneNote permissions, see Notes permissions.

To get started with Microsoft Information Protection APIs in Microsoft Graph, see the Microsoft Information Protection [reference content]().

## API reference

Looking for the API reference for this service?

- Microsoft Information Protection API in Microsoft Graph v1.0
- Microsoft Information Protection API in Microsoft Graph beta

## Next steps

- Select and try Information Protection labeling sample queries in [Graph Explorer](). Choose **Show more samples** in the column on the left. Use the menu to turn on **Information Protection**.
