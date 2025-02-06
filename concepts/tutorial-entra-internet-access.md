---
title: Configure Microsoft Entra Internet Access using Microsoft Graph APIs
description: Configure Microsoft Entra Internet Access using Microsoft Graph APIs.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: fgomulka
ms.topic: tutorial
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
ms.date: 02/05/2025
#Customer intent: As a customer, I want to learn how to configure Microsoft Entra Internet Access using Microsoft Graph APIs.
---

# Configure Microsoft Entra Internet Access using Microsoft Graph APIs

[Microsoft Entra Internet Access](/entra/global-secure-access/concept-internet-access) provides an Identity-centric Secure Web Gateway (SWG) solution for Software as a Service (SaaS) applications and other Internet traffic.

In this tutorial, you learn how to configure Microsoft Entra Internet Access programmatically using the Microsoft Graph network access APIs. You:

> [!div class="checklist"]
> * Create web content filtering policies to allow or block access to given destinations.
> * Align web content filtering policies to Conditional Access policies via a filtering profile container, also known as a security profile.

> [!IMPORTANT]
> Some API operations in this tutorial use the `beta` endpoint.

## Prerequisites

To complete the steps in this tutorial:

- Sign in to an API client such as Graph Explorer with an account assigned to the supported administrator roles. The following Microsoft Entra roles are the least privileged for the operations in this tutorial:
  - Global Secure Access Administrator for configuring the Web content filtering policies and filtering profiles.
  - Conditional Access Administrator for configuring Conditional Access policies.
- Grant consent to your admin for the *NetworkAccess.Read.All*, *NetworkAccess.ReadWrite.All*, and *Policy.ReadWrite.ConditionalAccess* delegated permissions.
- Have a test user to assign to the Conditional Access policy.

## Step 1: Enable Internet Access traffic forwarding

Before you configure Microsoft Entra Internet Access filtering policies, start by deploying the Global Secure Access (GSA) client to your organization’s devices. Then begin forwarding traffic to GSA edge locations by enabling the Internet Access forwarding profile

### Step 1.1: Retrieve the Internet Access traffic forwarding profile

Record the ID of the profile to use.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_list_forwardingprofiles"
}-->
```http
GET https://graph.microsoft.com/beta/networkAccess/forwardingProfiles?$filter=trafficForwardingType eq 'internet'
Content-type: application/json
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.forwardingProfile"
} -->
```http
HTTP/1.1 200 O
Content-type: application/json

{
            "trafficForwardingType": "internet",
            "priority": 2,
            "id": "70314902-4902-4097-8bba-48c0ed00f0c2",
            "name": "Internet traffic forwarding profile",
            "description": "Default traffic forwarding profile for Internet traffic acquisition. Assign the profile to client or branch offices to acquire Internet traffic for Zero Trust Network Access.Internet traffic forwarding profile will exclude all endpoints defined in Microsoft 365 traffic forwarding profile.",
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2025-01-14T13:11:57.9295327Z",
            "associations": [],
            "servicePrincipal": {
                "appId": "14d5bf67-9857-4404-baf1-c35e9bce4559",
                "id": "aa9cd481-29b6-4bcc-a97e-f7bf25c2c1b5"
            }
}
```

### Step 1.2: Enable the state of Internet Access forwarding profile

The request returns a `204 No Content` response code.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_enable_forwardingprofiles"
}-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/70314902-4902-4097-8bba-48c0ed00f0c2
Content-type: application/json

{
   "state": "enabled"
}
```

## Step 2: Create a web content filtering policy and security profile

To configure policies in Microsoft Entra Internet Access, you first need to Create a filtering policy, which is a collection of rules, governing access to destinations like web categories and Fully Qualified Domain Names (FQDNs). For example, you can create a filtering policy with rules that block access to the Artificial Intelligence category and individual FQDNs. Then you organize filtering policies into a security profile which, to which you can target with Conditional Access policies.

### Step 2.1: Review available web categories list

If you need to review the list of supported web categories before you create a filtering policy, you can gather the full list via the following Graph API request. 

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_list_webcategories"
}-->
```http
GET https://graph.microsoft.com/beta/networkaccess/connectivity/webCategories
Content-type: application/json
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.connectivity.webCategories"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/webCategories",
    "value": [
        {
            "name": "AlcoholAndTobacco",
            "displayName": "Alcohol And Tobacco",
            "group": "Liability"
        },
        {
            "name": "ChildAbuseImages",
            "displayName": "Child Abuse Images",
            "group": "Liability"
        },
        ...
    ]
}
```

### Step 2.2: Retrieve the Internet Access traffic forwarding profile

In this example, you can create a filtering policy with rules that block access to the Artificial Intelligence category and FQDNs for bing.com. Once this policy is created, take note of the filtering policy ID for linking in the filtering profile.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_create_filteringPolicy"
}-->
```http
POST https://graph.microsoft.com/beta/networkaccess/filteringPolicies
Content-type: application/json

{
	"name": "AI and Bing",
	"policyRules": [
		{
			"@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",
			"name": "AI",
			"ruleType": "webCategory",
			"destinations": [
				{
					"@odata.type": "#microsoft.graph.networkaccess.webCategory",
					"name": "ArtificialIntelligence"
				}
			]
		},
		{
			"@odata.type": "#microsoft.graph.networkaccess.fqdnFilteringRule",
			"name": "bing FQDNs",
			"ruleType": "fqdn",
			"destinations": [
				{
					"@odata.type": "#microsoft.graph.networkaccess.fqdn",
					"value": "bing.com"
				},
				{
					"@odata.type": "#microsoft.graph.networkaccess.fqdn",
					"value": "*.bing.com"
				}
			]
		}
	],
	"action": "block"
}
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "#microsoft.graph.networkaccess.filteringPolicy"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "ec01c111-a066-4330-bd77-2d9c75208ee3",
    "name": "Search Engines",
    "description": null,
    "version": "1.0.0",
    "lastModifiedDateTime": "2025-02-05T18:10:28.9760687Z",
    "createdDateTime": "2025-02-05T18:10:27Z",
    "action": "block"
}
```

Step 2.3: Create a filtering profile (also known as a security profile)

Create a filtering profile (renamed to security profile in the Entra admin portal) that holds your policies and target in Conditional Access session control. Once this profile is created, take note of the filtering profile ID when linking in the Conditional Access policy.

### Request 

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_create_filteringProfile"
}-->
```http
POST https://graph.microsoft.com/beta/networkaccess/filteringProfiles
Content-type: application/json

{
	"name": "Security Profile for UserA",
	"state": "enabled",
	"priority": 100,
	"policies": []
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "#microsoft.graph.networkaccess.filteringProfile"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles/$entity",
    "priority": 100,
    "createdDateTime": "2025-02-05T18:27:31Z",
    "id": "37bd8bf7-a2c9-4c43-a154-cf6d9151d69c",
    "name": "Security Profile for UserA",
    "description": null,
    "state": "enabled",
    "version": "1.0.0",
    "lastModifiedDateTime": "2025-02-05T18:27:31.660891Z"
}
```

Step 2.4: Link the filtering policy to the filtering profile

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_link_filteringPolicy"
}-->
```http
POST https://graph.microsoft.com/beta/networkaccess/filteringProfiles/37bd8bf7-a2c9-4c43-a154-cf6d9151d69c/policies
Content-type: application/json

{
  "priority": 100,
	"state": "enabled",
	"@odata.type": "#microsoft.graph.networkaccess.filteringPolicyLink",
	"loggingState": "enabled",
	"policy": {
		"id": "71c34af5-bc2d-4e02-8c76-a5f639da50fc",
		"@odata.type": "#microsoft.graph.networkaccess.filteringPolicy"
}
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "#microsoft.graph.networkaccess.filteringPolicyLink"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "8cc2e4d8-ceb1-4a4a-bcf9-1b199fdb2f4d",
    "priority": 100,
    "state": "enabled",
    "version": "1.0.0",
    "loggingState": "enabled",
    "lastModifiedDateTime": "2025-02-05T18:31:32Z",
    "createdDateTime": "2025-02-05T18:31:32Z",
    "policy": {
        "@odata.type": "#microsoft.graph.networkaccess.filteringPolicy",
        "id": "71c34af5-bc2d-4e02-8c76-a5f639da50fc",
        "name": "Search Engines",
        "description": null,
        "version": "1.0.0",
        "lastModifiedDateTime": "2025-02-05T18:15:17.0759384Z",
        "createdDateTime": "2025-02-05T18:15:16Z",
        "action": "block"
    }
}
```

Step 3: Create and Link Conditional Access policy

To make the contents of your filtering profile user- and context-aware, you need to link it to a Conditional Access policy.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_create_ConditionalAccess"
}-->
```http
POST https://graph.microsoft.com/beta/identity/conditionalAccess/policies
Content-type: application/json

{
	"conditions": {
		"applications": {
			"includeApplications": [
				"5dc48733-b5df-475c-a49b-fa307ef00853"
			]
		},
		"users": {
			"includeUsers": [
				"6a5e61f8-2fdd-4a4d-a926-c9c7285538bb"
			]
		}
	},
	"displayName": "UserA Access to AI and Bing",
	"sessionControls": {
		"globalSecureAccessFilteringProfile": {
			"profileId": "3b40eb9f-0624-4690-9d91-e9e413e023aa",
			"isEnabled": true
		}
	},
	"state": "enabled"
}
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "#microsoft.graph.identity.conditionalAccess"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "9c5fbb22-30ff-4a17-9b83-ea9fbf2912a9",
    "templateId": null,
    "displayName": "UserA Access to AI and Bing",
    "createdDateTime": "2025-02-05T18:58:32.7622998Z",
    "modifiedDateTime": null,
    "state": "enabled",
    "grantControls": null,
    "partialEnablementStrategy": null,
    "conditions": {
        "userRiskLevels": [],
        "signInRiskLevels": [],
        "clientAppTypes": [
            "all"
        ],
        "platforms": null,
        "locations": null,
        "times": null,
        "deviceStates": null,
        "devices": null,
        "clientApplications": null,
        "applications": {
            "includeApplications": [
                "5dc48733-b5df-475c-a49b-fa307ef00853"
            ],
            "excludeApplications": [],
            "includeUserActions": [],
            "includeAuthenticationContextClassReferences": [],
            "applicationFilter": null
        },
        "users": {
            "includeUsers": [
                "6a5e61f8-2fdd-4a4d-a926-c9c7285538bb"
            ],
            "excludeUsers": [],
            "includeGroups": [],
            "excludeGroups": [],
            "includeRoles": [],
            "excludeRoles": [],
            "includeGuestsOrExternalUsers": null,
            "excludeGuestsOrExternalUsers": null
        }
    },
    "sessionControls": {
        "disableResilienceDefaults": null,
        "applicationEnforcedRestrictions": null,
        "cloudAppSecurity": null,
        "signInFrequency": null,
        "persistentBrowser": null,
        "continuousAccessEvaluation": null,
        "secureSignInSession": null,
        "networkAccessSecurity": {
            "policyId": "3b40eb9f-0624-4690-9d91-e9e413e023aa",
            "isEnabled": true
        },
        "globalSecureAccessFilteringProfile": {
            "profileId": "3b40eb9f-0624-4690-9d91-e9e413e023aa",
            "isEnabled": true
        }
    }
}
```

## Related content

- [Microsoft Security Service Edge Solution Deployment Guide for Microsoft Entra Internet Access Proof of Concept](/entra/architecture/gsa-deployment-guide-internet-access)
- [Tutorial: Configure Microsoft Entra Internet Access using Microsoft Graph APIs](/graph/tutorial-entra-internet-access)
