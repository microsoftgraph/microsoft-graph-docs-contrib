---
title: "Best practices for using Microsoft Graph permissions"
description: "In this module, learn best practices for using Microsoft Graph permissions when building a Microsoft Teams app."
ms.localizationpriority: high
author: v-sdhakshina
ms.author: v-sdhakshina
---

# Best practices for using Microsoft Graph permissions

When you create a Microsoft Teams app with advanced collaboration, grant the minimum permissions necessary for your app, because customer tenant admins might not approve apps or app features that require more permissions than they need. Design your Teams apps with a strong focus on customer privacy and security to ensure widespread use and adoption.

This article describes best practices for using Microsoft Graph permissions when building a Teams app intended for distribution.

## Implement the principle of least privilege

Microsoft Graph offers granular permissions that allow an app to request only the permissions it requires to function. By requesting the minimal least-privileged permissions required for your app functionality, you apply the principle of least privilege. The following examples describe some scenarios that use this principle:

* When an app is designed to only read the signed-in user’s profile information, it requires the `User.Read` permission, which is the least privileged permission to access the user’s details. The `User.ReadWrite` permission is unnecessary, as its over-privileges the app, which doesn't need to modify the user’s profile.

* Apps that need to read tenant groups without a signed-in user require `Group.Read.All` application permission.

* Apps that manage dynamic jobs and sync with the user’s Outlook calendar to read and update require `Calendars.ReadWrite` permission.

For more information on applying the principle of least privilege, see [enhance security with the principle of least privilege](/azure/active-directory/develop/secure-least-privileged-access) and [building apps that secure identity through permissions and consent](/security/zero-trust/develop/identity).

### Identify the implementation that uses the least possible permissions

The fewer permissions an app requests, the fewer privacy concerns for customers. Therefore, reconsider features if simpler ones provide similar value while requiring fewer permissions. 

For example, for apps published on the Teams store, you can use their persistent ID instead of using `AppCatalog.Read.All` to get the ID. 

Also, don't recreate existing platform features for minor customizations; instead, use native capabilities or launch a platform feature request.

### Request the least privileged permissions possible for the endpoints used

Microsoft Graph supports two types of access scenarios: delegated access and application access. With delegated access, the app calls Microsoft Graph on behalf of a signed-in user. In application access, the app calls Microsoft Graph with its own identity, without a signed in user. [Resource-specific Consent (RSC)](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions, which also have both levels, are restricted to the domain where the app is installed. For more information, see [Microsoft Graph permissions](permissions-overview.md).

The least privileged permissions an app requests, the fewer privacy concerns it will raise for the customer’s tenant admin.

Use the URL `https://learn.microsoft.com/en-us/graph/api/user-get` to get a list of permissions that allow the `user-get` call. For example, this `user-get` endpoint can use many permissions like `User.Read` and `User.ReadWrite`. If the app only needs the current user’s data, it must use `User.Read` instead of `Directory.ReadWrite.All`. To apply this method to your endpoint, replace `user-get` in the URL with the specific endpoint name.

Prefer RSC permissions because they offer a higher level of privacy.  Delegated permissions allow the application to act on behalf of a signed-in user, limiting access to the data within the user’s scope. If you can't use either RCS or delegated permissions, you will have to use application permissions. Application permissions carry the most privacy risks as they allow access to data without a signed-in user present.

For example, use `ChatMessage.Send.Chat` RSC permission to send a message to a chat with your app, instead of the `Chat.ReadWrite` Microsoft Graph permission, because `ChatMessage.Send.Chat` is the least permission level that you need for this action.

If you use RSC permissions, create an admin dashboard as it allows the tenant admin to see and manage where the permissions are used and provides a way to remove these permissions if needed. This reassures customers that they control how their users use the permissions.

## Maximize app value and user experience for customers with limited permissions

Tenant admins can block permissions on which your app relies. It is important to anticipate this and provide alternatives to maximize your app's value. Even without certain permissions granted on a customer tenant, an app must still offer value to the user, with only the specific functionality requiring the blocked permission being unavailable.

* **Create fallback workarounds**: Have permissionless alternatives ready for when preferred features are blocked, ensuring users still receive the best possible experience. For example, if you use `Presence.Read.All` to display users’ statuses in the app and the permission is denied, hide the presence indicator to avoid confusion from the *Unknown* status. Or, if an app creates a calendar event, use the [deep link method](/microsoftteams/platform/concepts/build-and-test/deep-link-workflow?tabs=teamsjs-v2) as an alternative to using Graph and requesting the `Calendar.ReadWrite` permission. This allows customers to use the **add event to my calendar** feature even if they don’t grant the permissions.
* **Implement feature management**: Use toggles or other management tools to adjust features based on the permissions granted by the customer.
* **Consider staggered permissions for user-installed apps**: Consider using [staggered permissions](/samples/officedev/microsoft-teams-samples/officedev-microsoft-teams-samples-tab-staggered-permission-nodejs/) to request permissions only when necessary for a feature, aligning with user privacy policies, and potentially increasing app usage. This isn't applicable for admin-installed apps.

## Manage app launch and updates that require additional permissions with customers

To manage new app versions with permission changes effectively, ensure you communicate with customers to maintain trust and prevent churn.

* **Group permission changes together**: Consolidate permission changes into a single release to minimize frequency of updates and customer impact.
* **Manage updates in advance**: Plan and communicate permission updates well in advance to allow customers to initiate their internal approval processes, avoiding any interruption in app functionality.

## Document and share the required permission with customers

Clearly document all permissions in a format and language accessible to both technical and business stakeholders. The following list provides concrete suggestions for clearly documenting the permissions choices in your app:

* **Explain use cases**: Provide explanations that relate directly to the app’s use cases and scenarios, detailing the value added by each permission.
* **Include visuals**: Use screenshots to illustrate where permissions are needed within the app.
* **Describe impact of non-granted permissions**: For high-value scenarios, describe the potential impact on users if the permission isn't granted.
* **Provide clear app versions**: Create an easy-to-understand versioning system for published apps, Azure AD app registrations, and documentation, enabling customers to track features and approvals for each version.

## Use recommended app installation, consent, and updates for your Teams app

Customer tenant admins trust apps that adhere to standard procedures more than apps with custom installation and management systems.

* **Offer standard app installation**: To maintain trust and avoid any negative impact, publish your app on Microsoft’s official channels and use Microsoft’s recommended process for app installation. Don't use alternative installation methods, such as links or multiple apps, because they erode customer trust. Exceptions apply in cases of limitations or known issues like  [limiting application permissions to specific Exchange online mailboxes](auth-limit-mailbox-access.md), missing [Outlook mailbox](/exchange/recipients-in-exchange-online/manage-user-mailboxes/manage-user-mailboxes), or [SharePoint](/sharepoint/dev/solution-guidance/security-apponly-azureacs) controls.
* **Hide apps from users for admin-installed apps**: For admin-installed apps, consider setting the  `defaultblockuntiladminaction` [app manifest](/microsoftteams/platform/resources/schema/manifest-schema) parameter to true to hide the app from tenant users by default until an admin authorizes it. However, this approach might not be suitable for user-installed apps.

## Update your publisher attestation after changing permissions

To provide an experience that is trustworthy and will be perceived as such by the customer, update the Publisher Attestation to reflect permission changes for the app. If not, the list of permissions on the Microsoft documentation page is different from the list of permissions requested by the app. This difference erodes customer trust and adoption.

## Microsoft 365 certification for Teams app

To help customers to overcome app security and privacy concerns, certify your Teams app through the [Microsoft 365](/microsoft-365-app-certification/docs/enterprise-app-certification-guide) program. With Microsoft 365 certification, you affirm your dedication to adhering to security and privacy standards, which increases the customer confidence and facilitates the approval process for your app.

## See also

* [Overview of Microsoft Graph permissions](permissions-overview.md)
* [Microsoft Graph permissions reference](permissions-reference.md)
* [Resource-specific consent for your Teams app](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)
