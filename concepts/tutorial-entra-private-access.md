---
title: Configure Microsoft Entra Private Access using Microsoft Graph APIs
description: Configure Microsoft Entra Private Access using Microsoft Graph APIs.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: nbeesetti
ms.topic: tutorial
ms.localizationpriority: medium
ms.subservice: entra-applications
ms.date: 03/07/2024
#Customer intent: As a customer, I want to learn how to configure Microsoft Entra Private Access using Microsoft Graph APIs.
---

# Configure Microsoft Entra Private Access using Microsoft Graph APIs

[Microsoft Entra Private Access](/entra/global-secure-access/concept-private-access) allows users remote access to on-premises applications without the need for a VPN.

In this tutorial, you learn how to configure Microsoft Entra Private Access programatically using the Microsoft Graph network access APIs. You:

> [!div class="checklist"]
> * Instantiate a custom application that you use to configure application settings for your backend application.
> * Configure Microsoft Entra application proxy for a private access application.

> [!IMPORTANT]
> Some API operations in this tutorial use the `beta` endpoint.

## Prerequisites

To complete the steps in this tutorial:

- Install and configure the Private Network Access connector. For more information, see [Add an on-premises application for remote access through application proxy in Microsoft Entra ID](/entra/identity/app-proxy/application-proxy-add-on-premises-application).
- Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) with an account that has at least the *Application Administrator* and *Global Secure Access Administrator* [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).
- Grant consent to the app for the *Directory.ReadWrite.All* and *NetworkAccess.ReadWrite.All* delegated permissions.
- Have a test user to assign to the application.

## Step 1: Create a custom application

To configure application proxy, you first create a custom application, and then update the app proxy settings in the application's **onPremisesPublishing** property. In this tutorial, you use an application template to create an instance of a custom application and service principal in your tenant. The template ID for a custom application is `8adf8e6e-67b2-4cf2-a259-e3dc5476c621`, which you can discover by running the following query: [GET https://graph.microsoft.com/v1.0/applicationTemplates?$filter=displayName eq 'Custom'](https://developer.microsoft.com/en-us/graph/graph-explorer?request=applicationTemplates%3F%24filter%3DdisplayName%2Beq%2B'Custom'&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com).

From the response, record the **id** of both the service principal and the application objects, and the value of **appId** for use later in the tutorial.

The following request creates a custom application named `newPrivateApp`.

### Request

<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entraprivateaccess_create_applicationtemplates"
}-->
```http
POST https://graph.microsoft.com/v1.0/applicationTemplates/8adf8e6e-67b2-4cf2-a259-e3dc5476c621/instantiate
Content-type: application/json

{ 
   "displayName": "newPrivateApp" 
} 
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.applicationServicePrincipal"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.applicationServicePrincipal",
    "application": {
        "id": "bf21f7e9-9d25-4da2-82ab-7fdd85049f83",
        "appId": "32977d3b-ee0e-4614-9f50-f583a07842d2",
        "applicationTemplateId": "8adf8e6e-67b2-4cf2-a259-e3dc5476c621",
        "createdDateTime": "2024-02-22T16:48:09Z",
        "deletedDateTime": null,
        "displayName": "newPrivateApp",
        "description": null,
        "groupMembershipClaims": null,
        "identifierUris": [],
        "isFallbackPublicClient": false,
        "signInAudience": "AzureADMyOrg",
        "tags": [],
        "tokenEncryptionKeyId": null,
        "defaultRedirectUri": null,
        "samlMetadataUrl": null,
        "optionalClaims": null,
        "addIns": [],
        "api": {
            "acceptMappedClaims": null,
            "knownClientApplications": [],
            "requestedAccessTokenVersion": null,
            "oauth2PermissionScopes": [
                {
                    "adminConsentDescription": "Allow the application to access newPrivateApp on behalf of the signed-in user.",
                    "adminConsentDisplayName": "Access newPrivateApp",
                    "id": "5cda2e1e-d9fd-4f69-b981-48fbc8a16be1",
                    "isEnabled": true,
                    "type": "User",
                    "userConsentDescription": "Allow the application to access newPrivateApp on your behalf.",
                    "userConsentDisplayName": "Access newPrivateApp",
                    "value": "user_impersonation"
                }
            ],
            "preAuthorizedApplications": []
        },
        "appRoles": [
            {
                "allowedMemberTypes": [
                    "User"
                ],
                "displayName": "User",
                "id": "18d14569-c3bd-439b-9a66-3a2aee01d14f",
                "isEnabled": true,
                "description": "User",
                "value": null,
                "origin": "Application"
            },
            {
                "allowedMemberTypes": [
                    "User"
                ],
                "displayName": "msiam_access",
                "id": "b9632174-c057-4f7e-951b-be3adc52bfe6",
                "isEnabled": true,
                "description": "msiam_access",
                "value": null,
                "origin": "Application"
            }
        ],
        "info": {
            "logoUrl": null,
            "marketingUrl": null,
            "privacyStatementUrl": null,
            "supportUrl": null,
            "termsOfServiceUrl": null
        },
        "keyCredentials": [],
        "parentalControlSettings": {
            "countriesBlockedForMinors": [],
            "legalAgeGroupRule": "Allow"
        },
        "passwordCredentials": [],
        "publicClient": {
            "redirectUris": []
        },
        "requiredResourceAccess": [],
        "verifiedPublisher": {
            "displayName": null,
            "verifiedPublisherId": null,
            "addedDateTime": null
        },
        "web": {
            "homePageUrl": "https://account.activedirectory.windowsazure.com:444/applications/default.aspx?metadata=customappsso|ISV9.1|primary|z",
            "redirectUris": [],
            "logoutUrl": null
        }
    },
    "servicePrincipal": {
        "id": "a8cac399-cde5-4516-a674-819503c61313",
        "deletedDateTime": null,
        "accountEnabled": true,
        "appId": "32977d3b-ee0e-4614-9f50-f583a07842d2",
        "applicationTemplateId": "8adf8e6e-67b2-4cf2-a259-e3dc5476c621",
        "appDisplayName": "newPrivateApp",
        "alternativeNames": [],
        "appOwnerOrganizationId": "38d49456-54d4-455d-a8d6-c383c71e0a6d",
        "displayName": "newPrivateApp",
        "appRoleAssignmentRequired": true,
        "loginUrl": null,
        "logoutUrl": null,
        "homepage": "https://account.activedirectory.windowsazure.com:444/applications/default.aspx?metadata=customappsso|ISV9.1|primary|z",
        "notificationEmailAddresses": [],
        "preferredSingleSignOnMode": null,
        "preferredTokenSigningKeyThumbprint": null,
        "replyUrls": [],
        "servicePrincipalNames": [
            "32977d3b-ee0e-4614-9f50-f583a07842d2"
        ],
        "servicePrincipalType": "Application",
        "tags": [
            "WindowsAzureActiveDirectoryCustomSingleSignOnApplication",
            "WindowsAzureActiveDirectoryIntegratedApp"
        ],
        "tokenEncryptionKeyId": null,
        "samlSingleSignOnSettings": null,
        "addIns": [],
        "appRoles": [
            {
                "allowedMemberTypes": [
                    "User"
                ],
                "displayName": "User",
                "id": "18d14569-c3bd-439b-9a66-3a2aee01d14f",
                "isEnabled": true,
                "description": "User",
                "value": null,
                "origin": "Application"
            },
            {
                "allowedMemberTypes": [
                    "User"
                ],
                "displayName": "msiam_access",
                "id": "b9632174-c057-4f7e-951b-be3adc52bfe6",
                "isEnabled": true,
                "description": "msiam_access",
                "value": null,
                "origin": "Application"
            }
        ],
        "info": {
            "logoUrl": null,
            "marketingUrl": null,
            "privacyStatementUrl": null,
            "supportUrl": null,
            "termsOfServiceUrl": null
        },
        "keyCredentials": [],
        "oauth2PermissionScopes": [
            {
                "adminConsentDescription": "Allow the application to access newPrivateApp on behalf of the signed-in user.",
                "adminConsentDisplayName": "Access newPrivateApp",
                "id": "5cda2e1e-d9fd-4f69-b981-48fbc8a16be1",
                "isEnabled": true,
                "type": "User",
                "userConsentDescription": "Allow the application to access newPrivateApp on your behalf.",
                "userConsentDisplayName": "Access newPrivateApp",
                "value": "user_impersonation"
            }
        ],
        "passwordCredentials": [],
        "verifiedPublisher": {
            "displayName": null,
            "verifiedPublisherId": null,
            "addedDateTime": null
        }
    }
}
```

## Step 2: Specify the type of Global Secure Access private application

You can create a Global Secure Access private application of type Quick Access or enterprise application. The values in the **application** > **onPremisesPublishing** > **applicationType** property would be `quickaccessapp` for Quick Access Applications and `nonwebapp` for enterprise applications.

In this step, you configure a Global Secure Access private app of type enterprise application.

The request returns a `204 No Content` response.
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entraprivateaccess_update_onpremisespublishing"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83

{
   "onPremisesPublishing":{
      "applicationType":"nonwebapp",
      "isAccessibleViaZTNAClient": true
   }
}
```

## Step 3: Assign a connector group to the application

### Step 3.1: Get connectors

Identify the connector that you want to assign to the connector group. Record its **id**.

#### Request

<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entraprivateaccess_get_connectors"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.connector"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#onPremisesPublishingProfiles('applicationProxy')/connectors",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET onPremisesPublishingProfiles('<key>')/connectors?$select=externalIp,machineName",
    "value": [
    {
      "id": "d2b1e8e8-8511-49d6-a4ba-323cb083fbb0",
      "machineName": "connectorA.redmond.contoso.com"",
      "externalIp": "131.137.147.164",
      "status": "active"
    },
    {
      "id": "f2cab422-a1c8-4d70-a47e-2cb297a2e051",
      "machineName": "connectorB.contoso.com"",
      "externalIp": "68.0.191.210",
      "status": "active"
    }
  ]
}
```

### Step 3.2: Create a connectorGroup

Create a connectorGroup named `Private Access ConnectorGroup` for the application. Record its **id**.

#### Request

<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entraprivateaccess_create_connectorgroup"
}-->
```http
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups
Content-type: application/json

{
  "name": "Private Access ConnectorGroup"
}
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.connectorGroup"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#connectorGroups/$entity",
  "id": "daf709c2-6072-414f-b08c-bb2a80c631c",
  "name": "Private Access ConnectorGroup",
  "connectorGroupType": "applicationProxy",
  "region": "eur",
  "isDefault": false
}
```

### Step 3.3: Assign a connector to the connectorGroup

The request returns a `204 No content` response.

<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entraprivateaccess_assign_connector"
}-->
```http
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors/27049d40-6e0a-4c53-a171-daada6e9c8a0/memberOf/$ref
Content-type: application/json

{
  "@odata.id":"https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/daf709c2-6072-414f-b08c-bb2a80c631c"
}
```

### Step 3.4: Assign the Global Secure Access private application to the connectorGroup

The request returns a `204 No content` response.

<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entraprivateaccess_assign_connectorgroup"
}-->
```http
PUT https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83/connectorGroup/$ref
Content-type: application/json

{
  "@odata.id":"https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationproxy/connectorGroups/daf709c2-6072-414f-b08c-bb2a80c631c"
}
```

## Step 4: Add application segments to your Global Secure Access private application

In the example, create a new app segment with the following settings:
- Replace the value of **destinationHost** with the private app destination. 
- Replace the value of **destinationType** with either `ipAddress`, `ipRange`, `ipRangeCidr`, `fqdn`, or `dnsSuffix`.
- Replace the value of **protocol** with either `tcp`, `udp`, or `tcp,udp` depending on the protocol your app uses.

### Request

<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entraprivateaccess_configure_applicationsegments"
}-->
```http
POST https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/applicationSegments

{
   "destinationHost": "test2.com",
   "destinationType": "fqdn",
   "port": 0,
   "ports": [
      "445-445",
      "3389-3389"
   ],
   "protocol": "tcp"
}
```

### Response



### [Optional] Update or delete an existing app segment

The following request updates an existing segment by changing the protocol to both `tcp` and `udp`.

#### Request

<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entraprivateaccess_update_applicationsegments"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/applicationSegments/{segmentID}

{ 
   "protocol":"tcp,udp" 
} 
```

#### Response


## Step 5: Assign a user to the Global Secure Access private application 

Assign the user to the service principal and grant them the `User` app role. In the request body, provide the following values:

- **principalId** - The ID of the user account that you created.
- **appRoleId** - The ID of the default `User` app role that you retrieved from the service principal.
- **resourceId** - The ID of the service principal.

#### Request

<!-- {
  "blockType": "ignore",
  "name": "tutorial_configure_entraprivateaccess_create_approleassignment"
}-->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/a8cac399-cde5-4516-a674-819503c61313/appRoleAssignments
Content-type: application/json

{
  "principalId": "4628e7df-dff3-407c-a08f-75f08c0806dc",
  "principalType": "User",
  "appRoleId":"18d14569-c3bd-439b-9a66-3a2aee01d14f",
  "resourceId":"a8cac399-cde5-4516-a674-819503c61313"
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#appRoleAssignments/$entity",
  "id": "I23pL8ZdNU-CIgQmqMEVyLJ0E6fx0ixEo92az8MnhtU",
  "creationTimestamp": "2020-06-09T00:06:07.5129268Z",
  "appRoleId": "18d14569-c3bd-439b-9a66-3a2aee01d14f",
  "principalDisplayName": "MyTestUser1",
  "principalId": "4628e7df-dff3-407c-a08f-75f08c0806dc",
  "principalType": "User",
  "resourceDisplayName": "newPrivateApp",
  "resourceId": "a8cac399-cde5-4516-a674-819503c61313"
}
```

## Step 6: Enable the Private Access traffic forwarding profile for your tenant

### Step 6.1: Retrieve the private access forwarding traffic profiles in your tenant

Record the **id** of the profile to use.

#### Request
<!-- {
  "blockType": "ignore",
  "name": "tutorial_configure_entraprivateaccess_list_forwardingprofiles"
}-->
```http
GET https://graph.microsoft.com/beta/networkAccess/forwardingProfiles
```

#### Response


### Step 6.2: Enable the state of the Private Access forwarding profile

The request returns a `204 No content` response.
<!-- {
  "blockType": "ignore",
  "name": "tutorial_configure_entraprivateaccess_enable_forwardingprofile"
}-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/{id}

{
   "state": "enabled"
}
```

## Step 7: Enable private Domain Name System (DNS) resolution

This capability is only available for Global Secure Access private applications of type Quick Access.

### Request

<!-- {
  "blockType": "ignore",
  "name": "tutorial_configure_entraprivateaccess_enable_dnsresolution"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83/onPremisesPublishing

{ 
   "isDnsResolutionEnabled": "true" 
} 
```

### Response

## Step 8: Create a new DNS suffix

### Request 
<!-- {
  "blockType": "ignore",
  "name": "tutorial_configure_entraprivateaccess_create_dnsSuffix"
}-->
```http
POST https://graph.microsoft-ppe.com/beta/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/applicationSegments

{ 
   "destinationHost": "app1.dns.com", 
   "destinationType": "dnsSuffix" 
} 
```

### Response


## Step 9: Test your access to the Global Secure Access private application


<!-- Navi to provide a write up for what's next. -->


## Related content

- [Microsoft Security Service Edge Solution Deployment Guide for Microsoft Entra Private Access Proof of Concept](/entra/architecture/sse-deployment-guide-private-access)
