---
title: "Setting up application authentication for eDiscovery Microsoft Graph APIs"
description: "Steps to set up application authentication for eDiscovery Microsoft Graph APIs"
author: "pamehra"
ms.localizationpriority: high
ms.subservice: "security"
ms.custom: scenarios:getting-started
---

# Setting up App Authentication for Purview eDiscovery with Microsoft Graph API

The Microsoft Purview Graph APIs for eDiscovery enable organizations to automate repetitive tasks and integrate with their existing eDiscovery tools to build repeatable workflows that industry regulations might require.

Implementing App Authentication using Microsoft Graph API ensures secure and efficient access to needed resources. This step-by-step guide walks you through setting up App Authentication for Purview eDiscovery, ensuring your applications are compliant and secure.

## Why App Authentication?

### Enhancing Security and Compliance

App Authentication enhances the security landscape of Purview eDiscovery by implementing robust authentication protocols that standard user credentials can't match. By using Application (client) IDs and certificates for authentication, we minimize the risk of credential theft, which is a common vulnerability in standard authentication methods. This approach not only secures the application against unauthorized access but also ensures that the data integrity is maintained during the eDiscovery process.

### Streamlining Access and Integration

App Authentication streamlines the integration of eDiscovery services with other applications and systems. It facilitates automated, script-based interactions that are crucial for large-scale legal investigations and compliance audits. By allowing secure, token-based access to eDiscovery resources, organizations can automate workflows, reduce manual errors, and ensure consistent enforcement of compliance policies across all digital environments.

## Implementing App Authentication

Implementing App Auth involves registering the app in Azure, creating client secret/certificates, assigning API permissions, setting up a service principal, and then using App Auth to call Microsoft Graph APIs. The following steps explain how to implement App Auth.

### Step 1: Register a New Application in Azure

1.1 To begin, navigate to the Azure portal and sign in with your Microsoft account.

1.2 Access the **Microsoft Entra ID** section on the left side.

1.3 Go to **App registrations**, select **New registration**.

1.4 Provide a meaningful name for your application and select register to create your new app registration. This process will generate essential details such as the Application (client) ID and Directory (tenant) ID, which are crucial for future steps.

1.5 You can now see the newly created app registration and the details.

![Screenshot of the app registration page.](images/security-ediscovery-appauthsetup-step1.png)

### Step 2: Create Client Secrets or Certificates

Now that your app is registered, proceed to **Manage > Certificates & secrets**. Here, you can create a client secret or upload a certificate, depending on your authentication needs:

For a client secret, select **New client secret**, add a description, and select **Add** to save. Make sure to copy and securely store the secret value, as required for authentication.

You can optionally upload a certificate to use along with the App ID for automation purposes.

![Screenshot of the app registration client secret page.](images/security-ediscovery-appauthsetup-step2.png)

### Step 3: Assign API Permissions

You need to set the correct API permissions for your application. Under **API permissions**, add eDiscovery.Read.All and eDiscovery.ReadWrite.All. These permissions enable your app to read or write eDiscovery data, respectively. It is mandatory that the tenant admin consents to these application permissions to enable them for use, as per policy for any application permission.

![Screenshot of the app registration api permissions page.](images/security-ediscovery-appauthsetup-step3.png)

### Step 4: Set Up a Service Principal

4.1 In the **Microsoft Entra ID** blade in the Azure portal, select **Enterprise Applications** and search your application by name to get the Object ID for your application. 

![Screenshot of the enterprise applications page.](images/security-ediscovery-appauthsetup-step4_1.png)

4.2 Open a new PowerShell session to create a service principal that you can add to the eDiscoveryManager role group:

Install and import the [ExchangeOnlineManagement](https://www.powershellgallery.com/packages/ExchangeOnlineManagement) module using the following commands. The Install-Module command will recommend package upgrade in case the module is already installed.

```
Install-Module ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Connect-IPPSSession
```

Use [New-ServicePrincipal](https://learn.microsoft.com/en-us/powershell/module/exchange/new-serviceprincipal) cmdlet to create a service principal with your app's details and verify using [Get-ServicePrincipal](https://learn.microsoft.com/en-us/powershell/module/exchange/get-serviceprincipal) cmdlet.  

```
New-ServicePrincipal -AppId "{APP_ID}" -ObjectId "{OBJECT_ID}" -DisplayName "{APP_NAME}"
Get-ServicePrincipal
```

Add service principal object id to the eDiscoveryManager role using [Add-RoleGroupMember](https://learn.microsoft.com/en-us/powershell/module/exchange/add-rolegroupmember) cmdlet and verify using [Get-RoleGroupMember](https://learn.microsoft.com/en-us/powershell/module/exchange/get-rolegroupmember) cmdlet. 

```
Add-RoleGroupMember -Identity "eDiscoveryManager" -Member "{OBJECT_ID}"
Get-RoleGroupMember -Identity "eDiscoveryManager"
```

Add service principal object id to the eDiscoveryAdministrator role using [Add-eDiscoveryCaseAdmin](https://learn.microsoft.com/en-us/powershell/module/exchange/add-ediscoverycaseadmin) cmdlet and verify using [Get-eDiscoveryCaseAdmin](https://learn.microsoft.com/en-us/powershell/module/exchange/get-ediscoverycaseadmin) cmdlet.

```
Add-eDiscoveryCaseAdmin -User "{OBJECT_ID}"
Get-eDiscoveryCaseAdmin
```

![Screenshot of the exchange online shell.](images/security-ediscovery-appauthsetup-step4_2.png)

### Step 5: Connect to Graph API Using App Authentication

Finally, use the [Connect-MgGraph](https://learn.microsoft.com/powershell/module/microsoft.graph.authentication/connect-mggraph) command to authenticate and connect to Graph API using the app authentication method. This setup enables your app to interact with Microsoft Graph securely.

### Step 6: Invoke Graph API Requests

Once connected, you can start making calls to the Microsoft Graph API using [Invoke-MgGraphRequest](https://learn.microsoft.com/powershell/module/microsoft.graph.authentication/invoke-mggraphrequest). This method allows you to perform various operations required by eDiscovery services in your organization.

## References

For API testing on Postman, see [Use Postman with the Microsoft Graph API](https://learn.microsoft.com/graph/use-postman).