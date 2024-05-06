---
title: "Best practices for using Microsoft Graph permissions"
description: "In this module, learn best practices for using Microsoft Graph permissions when building a Microsoft Teams app."
ms.localizationpriority: high
author: v-sdhakshina
ms.author: v-sdhakshina
---

# Best practices for using Microsoft Graph permissions

To create a Microsoft Teams app with advanced collaborative features, you need to balance the need for Microsoft Graph permissions with the assurance that customers grant those permissions. Customers might not use apps or app features due to permission concerns. This can minimize the app's adoption and usage. We recommend you design Teams apps with a focus on customer privacy and security.

Here you learn the best practices for using Microsoft Graph permissions when building a Teams app.

## Implement the principle of least privilege

Microsoft Graph offers granular permissions that allow an app to request only the permissions it requires to function. This supports the principle of least privilege, granting apps the minimal permissions required for their functionality.

**Examples:**

* When an app is designed to only read the signed-in user’s profile information, it requires the `User.Read` permission, which is the least privileged permission to access the user’s details. The `User.ReadWrite` permission is unnecessary, as its over-privileges the app, which doesn't need to modify the user’s profile.<br>

* Apps that need to read tenant groups without a signed-in user must request `Group.Read.All` application permission.<br>

* Apps that manage dynamic jobs and sync with the user’s Outlook calendar to read and update requires `Calendars.ReadWrite` permission.

Apply the principle of least privilege when you assign and grant Microsoft Graph permissions to an app to reduce privacy risks that might hinder adoption. For more information, see [enhance security with the principle of least privilege](/azure/active-directory/develop/secure-least-privileged-access) and [building apps that secure identity through permissions and consent](/security/zero-trust/develop/identity).

### Identify the implementation that uses the least possible permissions

* **Feature development**: Before implementation, explore all options including their pros and cons. Consider simpler implementations that deliver similar value without requiring permissions.
* **Recreating features**: Avoid recreating existing platform features for minor customizations. Evaluate if the added value outweighs the potential customer obstacles. Use native capabilities or launch a platform feature request when possible.

**Examples:**

* If an app is available on the store, it can use its persistent ID instead of using `AppCatalog.Read.All` to get its app ID.
* If you want to add a feature to the Teams *share to* component that isn’t natively supported, like sharing Adaptive Cards directly, it's best to consider other alternatives.

### Request the lowest level of permissions possible for the endpoints used

* **Permission levels**: Permissions have various levels. Application permissions give direct access to the app without user interaction. Delegated permissions require user interaction and provide access for about an hour after the user intervenes. RSC permissions, which also have both levels, are restricted to the domain where the app is installed. We don't recommend you use both application and delegated permissions together in the same app. For more information, see [Microsoft Graph permissions](permissions-overview.md).

* **API Endpoint Access**: You can use the URL `https://learn.microsoft.com/en-us/graph/api/{api_endpoint}` to get a list of permissions that allow the `api_endpoint` call. For example, the `user-get` endpoint can use many permissions like `User.Read`, `User.ReadWrite`, and so on. If the app just needs the current user’s data, it should use `User.Read` instead of `Directory.ReadWrite.All`.

     If an endpoint can use RSC permissions, they’re the best for privacy. Next are delegated permissions, which need user action to access the Graph. Lastly, application permissions are the most sensitive to privacy. For example, if you want to send a message to a chat with the app, use `ChatMessage.Send.Chat` (an RSC permission). It’s better than `Chat.ReadWrite` (a Microsoft Graph permission), which also allows you to read messages.

     If you use RSC permissions, we suggest developers create an admin dashboard as it allows the tenant admin to see and manage where the permissions are used. For example, admins can see which chats have granted the app permissions and can remove these permissions if needed. This reassures customers that they control how their users use the permissions.

## Maximize app value and user experience for customers with limited permissions

* **Provide maximum value**: Even without certain permissions granted on a customer tenant, an app must still offer the greatest value possible, with only the specific functionality requiring the blocked permission being unavailable.
* **Fallback workarounds**: Developers must have permissionless alternatives ready for when preferred features are blocked, ensuring users still receive the best possible experience.
* **Feature management flexibility**: Apps might use toggles or other management tools to adjust features based on the permissions granted by the customer.
* **Staggered permissions for user-installed apps**: Apps can use [staggered permissions](/samples/officedev/microsoft-teams-samples/officedev-microsoft-teams-samples-tab-staggered-permission-nodejs/) to request permissions only when necessary for a feature, aligning with user privacy policies, and potentially increasing app usage. It isn't applicable for admin-installed apps.

**Examples:**

* If a feature uses `Team.BasicRead.All` and `Channel.BasicRead.All` permissions to navigate Teams and their channels to share content, you can post directly in the General channel if the `Channel.BasicRead.All` permission is denied.
* If you use `Presence.Read.All` to display users’ statuses in the app and the permission is denied, you can hide the presence indicator to avoid confusion from the *Unknown* status.
* If a partner app creates a calendar event, it can use the [deep link method](/microsoftteams/platform/concepts/build-and-test/deep-link-workflow?tabs=teamsjs-v2) as an alternative to using Graph and requesting the `Calendar.ReadWrite` permission. This allows customers to use the **add event to my calendar** feature even if they don’t grant the permissions.

## Manage app launch and updates that require additional permissions with customers

* **Maintain communication**: To manage new app versions with permission changes effectively, ensure you communicate with customers to maintain trust and prevent churn.
* **Group permission changes**: Consolidate permission changes into a single release to minimize frequency of updates and customer impact.
* **Manage updates in advance**: Plan and communicate permission updates well in advance to allow customers to initiate their internal approval processes, avoiding any interruption in app functionality.
* **Provide clear communication**: Ensure that any permission changes are communicated clearly and have fallback options in place to mitigate any impact on users.
* **Evaluation time**: Large customers need time to assess new permissions, so include this in your deployment plan to facilitate a smooth app launch or update.

## Document and share the required permission with customers

* **Document permissions**: Clearly document all permissions in a format and language accessible to both technical and business stakeholders.
* **Explain use cases**: Provide explanations that relate directly to the app’s use cases and scenarios, detailing the value added by each permission.
* **Include visuals**: Use screenshots to illustrate where permissions are needed within the app.
* **Impact assessment**: For high-value scenarios, describe the potential impact on users if the permission isn't granted.
* **Removal instructions**: Provide guidance on how to remove permissions after app installation.
* **Versioning system**: Create an easy-to-understand versioning system for published apps, Azure AD app registrations, and documentation, enabling customers to track features and approvals for each version.

## Ensure proper app installation, consent, and updates for your Teams app

* **Install app in official channel**: Encourage customers to use Microsoft’s official channels for installing Teams apps to maintain trust and avoid any negative impact.
* **Avoid alternative methods**: Discourage the use of alternative installation methods, such as links or multiple apps, which can erode customer trust. Exceptions might apply in cases of limitations or known issues like [limiting application permissions to specific Exchange online mailboxes](auth-limit-mailbox-access.md), missing [Outlook mailbox](/exchange/recipients-in-exchange-online/manage-user-mailboxes/manage-user-mailboxes), or [SharePoint](/sharepoint/dev/solution-guidance/security-apponly-azureacs) controls.
* **Admin-installed apps**: For admin-installed apps, developers can set the `defaultblockuntiladminaction` [app manifest](/microsoftteams/platform/resources/schema/manifest-schema) parameter to `true`, which hides the app from tenant users by default until an admin authorizes it. However, this approach might not be suitable for user-installed apps.

## Update your publisher attestation

**Permission changes**: Developers must update their publisher attestation in the [Microsoft Teams apps security and compliance](/microsoft-365-app-certification/teams/teams-apps) to reflect any permission changes for the app.

If this step isn't completed, the detailed list of permissions on the documentation page is different to the list of permissions requested by the app. This impacts the customer trust and adoption.

## Microsoft 365 certification for Teams app

**Certification benefits**: Certify your Teams app through the [Microsoft 365](/microsoft-365-app-certification/docs/enterprise-app-certification-guide) program that helps customers to overcome concerns on app security and privacy. It can be the first step for customers to start their approval process for the app permission on their tenant.​

With Microsoft 365 certification, you affirm your dedication to adhering to security and privacy standards, potentially increasing customer confidence and facilitating the approval process for your app.

## See also

* [Overview of Microsoft Graph permissions](permissions-overview.md)
* [Microsoft Graph permissions reference](permissions-reference.md)