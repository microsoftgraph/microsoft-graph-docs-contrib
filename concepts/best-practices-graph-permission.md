---
title: "Best practices for using Microsoft Graph permissions"
description: "In this module, learn best practices for using Microsoft Graph permissions when building a Microsoft Teams app."
ms.localizationpriority: high
author: v-sdhakshina
ms.author: v-sdhakshina
---

# Best practices for using Microsoft Graph permissions

When you create a Microsoft Teams app with advanced collaboration, only grant the minimum permissions necessary for your app, because customer tenant admins might not approve the use of apps or app features due to permission concerns. This can minimize the app's adoption and usage. We recommend you design Teams apps with a focus on customer privacy and security.

This article describes best practices for using Microsoft Graph permissions when building a Teams app intended for distribution.

## Implement the principle of least privilege

Microsoft Graph offers granular permissions that allow an app to request only the permissions it requires to function. This supports the principle of least privilege, granting apps the minimal permissions required for their functionality. The following examples describe some scenarios where you can apply the principle of least privilege:

* When an app is designed to only read the signed-in user’s profile information, it requires the `User.Read` permission, which is the least privileged permission to access the user’s details. The `User.ReadWrite` permission is unnecessary, as its over-privileges the app, which doesn't need to modify the user’s profile.<br>

* Apps that need to read tenant groups without a signed-in user require `Group.Read.All` application permission.<br>

* Apps that manage dynamic jobs and sync with the user’s Outlook calendar to read and update require `Calendars.ReadWrite` permission.

To reduce privacy and security risks, follow the principle of least privilege by assigning only necessary Microsoft Graph permissions when creating your app. For more information, see [enhance security with the principle of least privilege](/azure/active-directory/develop/secure-least-privileged-access) and [building apps that secure identity through permissions and consent](/security/zero-trust/develop/identity).

### Identify the implementation that uses the least possible permissions

The fewer permissions an app requests, the fewer privacy concerns it will raise for the customer’s tenant admin.

* **Feature development**: Before implementing a feature, consider whether you can opt for a simpler feature that delivers similar value while requiring fewer permissions.
* **Recreating features**: Avoid recreating existing platform features for minor customizations. Evaluate if the added value exceeds the potential customer challenges. Use native capabilities or launch a platform feature request when possible.

**Examples:**

* For apps published on the Teams store, you can use their persistent ID instead of using `AppCatalog.Read.All` to get the ID.
* For apps published on the Teams store, if customization of a Teams platform feature through the Graph API is required, for example extending the **share to channel** component to use Adaptive Cards instead of text, consult your customers to evaluate the benefit against the potential impact on adoption due to the necessary permissions.

### Request the lowest level of permissions possible for the endpoints used

Microsoft Graph supports two types of access scenarios: delegated access and app-only access. With delegated access, the app calls Microsoft Graph on behalf of a signed-in user. In app-only access, the app calls Microsoft Graph with its own identity, without a signed in user.

To support these access scenarios, Microsoft Graph exposes delegated permissions and application permissions. RSC permissions, which also have both levels, are restricted to the domain where the app is installed. For more information, see [Microsoft Graph permissions](permissions-overview.md).

The lower permissions an app requests, the least privacy concerns it will raise for the customer’s tenant admin.

* **API Endpoint Access**: You can use the URL `https://learn.microsoft.com/en-us/graph/api/{api_endpoint}` to get a list of permissions that allow the `api_endpoint` call. For example, the `user-get` endpoint can use many permissions like `User.Read`, `User.ReadWrite`, and so on. If the app only needs the current user’s data, it must use `User.Read` instead of `Directory.ReadWrite.All`.

* **Preferred permission types**: When considering privacy, the most preferable permissions for an endpoint are RSC permissions as they offer a higher level of privacy. Next are delegated permissions, which require user action to access the Graph. Lastly, application permissions are the most sensitive to privacy. For instance, to send a message to a chat with the app, it’s recommended to use `ChatMessage.Send.Chat`, which is an RSC permission, `over Chat.ReadWrite`, a Microsoft Graph permission that also permits reading messages.

* **RSC admin dashboard**: If you use RSC permissions, we recommend you create an admin dashboard as it allows the tenant admin to see and manage where the permissions are used. For example, admins can see which chats have granted the app permissions and can remove these permissions if needed. This reassures customers that they control how their users use the permissions.

## Maximize app value and user experience for customers with limited permissions

Even without certain permissions granted on a customer tenant, an app must still offer the greatest value possible, with only the specific functionality requiring the blocked permission being unavailable.

* **Fallback workarounds**: Apps can have permissionless alternatives ready for when preferred features are blocked, ensuring users still receive the best possible experience.
* **Feature management flexibility**: Apps can use toggles or other management tools to adjust features based on the permissions granted by the customer.
* **Staggered permissions for user-installed apps**: Apps can use [staggered permissions](/samples/officedev/microsoft-teams-samples/officedev-microsoft-teams-samples-tab-staggered-permission-nodejs/) to request permissions only when necessary for a feature, aligning with user privacy policies, and potentially increasing app usage. It isn't applicable for admin-installed apps.

**Examples:**

* If a feature uses `Team.BasicRead.All` and `Channel.BasicRead.All` permissions to navigate teams and their channels to share content, you can post directly in the General channel if the `Channel.BasicRead.All` permission is denied.
* If you use `Presence.Read.All` to display users’ statuses in the app and the permission is denied, you can hide the presence indicator to avoid confusion from the *Unknown* status.
* If a partner app creates a calendar event, it can use the [deep link method](/microsoftteams/platform/concepts/build-and-test/deep-link-workflow?tabs=teamsjs-v2) as an alternative to using Graph and requesting the `Calendar.ReadWrite` permission. This allows customers to use the **add event to my calendar** feature even if they don’t grant the permissions.

## Manage app launch and updates that require additional permissions with customers

To manage new app versions with permission changes effectively, ensure you communicate with customers to maintain trust and prevent churn.

* **Group permission changes**: Consolidate permission changes into a single release to minimize frequency of updates and customer impact.
* **Manage updates in advance**: Plan and communicate permission updates well in advance to allow customers to initiate their internal approval processes, avoiding any interruption in app functionality.

## Document and share the required permission with customers

Clearly document all permissions in a format and language accessible to both technical and business stakeholders.

* **Explain use cases**: Provide explanations that relate directly to the app’s use cases and scenarios, detailing the value added by each permission.
* **Include visuals**: Use screenshots to illustrate where permissions are needed within the app.
* **Impact assessment**: For high-value scenarios, describe the potential impact on users if the permission isn't granted.
* **Removal instructions**: Provide guidance on how to remove permissions after app installation.
* **Versioning system**: Create an easy-to-understand versioning system for published apps, Azure AD app registrations, and documentation, enabling customers to track features and approvals for each version.

## Use recommended app installation, consent, and updates for your Teams app

Customer tenant admins tend to trust apps that adhere to standard procedures more than apps with custom installation and management systems.

* **Install app in official channel**: To maintain trust and avoid any negative impact, publish your app on Microsoft’s official channels and use Microsoft’s recommended process for app installation. We don't recommend the use of alternative installation methods, such as links or multiple apps, which can erode customer trust. Exceptions might apply in cases of limitations or known issues like [limiting application permissions to specific Exchange online mailboxes](auth-limit-mailbox-access.md), missing [Outlook mailbox](/exchange/recipients-in-exchange-online/manage-user-mailboxes/manage-user-mailboxes), or [SharePoint](/sharepoint/dev/solution-guidance/security-apponly-azureacs) controls.
* **Admin-installed apps**: For admin-installed apps, you can set the `defaultblockuntiladminaction` [app manifest](/microsoftteams/platform/resources/schema/manifest-schema) parameter to `true`, which hides the app from tenant users by default until an admin authorizes it. However, this approach might not be suitable for user-installed apps.

## Update your publisher attestation after changing permissions

You must update your publisher attestation in the [Microsoft Teams apps security and compliance](/microsoft-365-app-certification/teams/teams-apps) to reflect any permission changes for the app.

If this step isn't completed, the detailed list of permissions on the documentation page is different from the list of permissions requested by the app. This erodes customer trust and adoption.

## Microsoft 365 certification for Teams app

Certify your Teams app through the [Microsoft 365](/microsoft-365-app-certification/docs/enterprise-app-certification-guide) program that helps customers to overcome concerns on app security and privacy. It can be the first step for customers to start their approval process for the app permission on their tenant.​

With Microsoft 365 certification, you affirm your dedication to adhering to security and privacy standards, which increases the customer confidence and facilitates the approval process for your app.

## See also

* [Overview of Microsoft Graph permissions](permissions-overview.md)
* [Microsoft Graph permissions reference](permissions-reference.md)
* [Resource-specific consent for your Teams app](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)
