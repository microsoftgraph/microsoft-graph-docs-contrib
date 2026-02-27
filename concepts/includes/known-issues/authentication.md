---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Publisher message of "unverified" occurs during PowerShell and CLI app consent

<!-- {
  "ms.author": "ckigoonya",
  "ms.reviewer": ""
} -->

The consent page shows that the command-line app that caters to PowerShell and CLI is from an unverified publisher.

#### Workaround

To remove the "unverified" message, you can do an app registration of your own, on which you can set yourself as the verified publisher. You need to go through the publisher verification process, and use the app ID on the Microsoft Graph PowerShell SDK, as follows:

```powershell
Connect-MgGraph -AppId "{your-own-app-id}" -Scopes "scope"
```

### Pre-consent for CSP apps doesn't work in some customer tenants

<!-- {
  "ms.author": "sureshja",
  "ms.reviewer": ""
} -->

Under certain circumstances, pre-consent for cloud solution provider (CSP) apps may not work for some of your customer tenants.

For apps using delegated permissions, when using the app for the first time with a new customer tenant, you might receive this error after sign-in: `AADSTS50000: There was an error issuing a token`.

For apps using application permissions, your app can acquire a token, but unexpectedly gets an access denied message when calling Microsoft Graph.

We're working to fix this issue, so that preconsent works for all CSP customer tenants.

#### Workaround

To unblock development and testing, you can use the following workaround.

> [!NOTE]
> This isn't a permanent solution and is only intended to unblock development. This workaround won't be required once the issue is fixed. This workaround doesn't need to be undone after the fix is in place.

1. Open an Azure AD v2 PowerShell session and connect to your customer tenant by entering your admin credentials into the sign-in window. You can download and install Azure AD PowerShell V2 from [here](https://www.powershellgallery.com/packages/AzureAD).

    ```powershell
    Connect-AzureAd -TenantId {customerTenantIdOrDomainName}
    ```

2. Create the Microsoft Graph service principal.

    ```powershell
    New-AzureADServicePrincipal -AppId 00000003-0000-0000-c000-000000000000
    ```

### Azure AD v2.0 endpoint isn't supported for CSP apps

<!-- {
  "ms.author": "sureshja",
  "ms.reviewer": ""
} -->

Cloud solution provider (CSP) apps must acquire tokens from the Azure AD (v1) endpoints to successfully call Microsoft Graph in their partner-managed customers. Currently, acquiring a token through the newer Azure AD v2.0 endpoint isn't supported.
