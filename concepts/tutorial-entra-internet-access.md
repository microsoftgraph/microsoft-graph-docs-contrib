---
title: Configure Microsoft Entra Internet Access using Microsoft Graph APIs
description: Configure Microsoft Entra Internet Access using Microsoft Graph APIs.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: fgomulka
ms.topic: tutorial
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
ms.date: 06/10/2025
#Customer intent: As a security administrator, I want to use Microsoft Graph APIs to block specific web traffic and domains so that I can protect users from unwanted content and secure my organization's internet traffic.
---

# Configure Microsoft Entra Internet Access using Microsoft Graph APIs

[Microsoft Entra Internet Access](/entra/global-secure-access/concept-internet-access) provides an identity-centric Secure Web Gateway (SWG) solution for Software as a Service (SaaS) applications and other internet traffic. Admins use Microsoft Entra Internet Access to protect users, devices, and data from the Internet's wide threat landscape with best-in-class security controls and visibility through traffic logs. Deeply integrated with Microsoft Entra ID Conditional Access, Microsoft's SWG is identity-centric, making it easy for IT admins to manage their organization's policy in one engine.

In this tutorial, you learn how to configure Microsoft Entra Internet Access programmatically using the Microsoft Graph network access APIs. You:

> [!div class="checklist"]
> * Create web content filtering policies to allow or block access to given destinations.
> * Align web content filtering policies to Conditional Access policies via a filtering profile container, also known as a security profile.

> [!IMPORTANT]
> Some API operations in this tutorial use the `beta` endpoint.

## Prerequisites

To complete this tutorial, you need:

- A Microsoft Entra tenant with the Microsoft Entra Suite license.
- An API client such as [Graph Explorer](https://aka.ms/ge) with an account that has the supported administrator roles. The following Microsoft Entra roles are the least privileged for the operations in this tutorial:
  - Global Secure Access Administrator for configuring the Web content filtering policies and filtering profiles.
  - Conditional Access Administrator for configuring Conditional Access policies.
- Delegated permissions: *NetworkAccess.Read.All*, *NetworkAccess.ReadWrite.All*, and *Policy.ReadWrite.ConditionalAccess*
- A test user to assign to the Conditional Access policy.
- The [Global Secure Access (GSA) client](/entra/global-secure-access/concept-clients) deployed to your organization's devices.

## Step 1: Enable Internet Access traffic forwarding

Before you configure Microsoft Entra Internet Access filtering policies, start by deploying the Global Secure Access (GSA) client to your organization's devices. Then begin forwarding traffic to GSA edge locations by enabling the Internet Access forwarding profile.

### Step 1.1: Retrieve the Internet Access traffic forwarding profile

Record the ID of the profile for use later in this tutorial.

#### Request

<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_list_forwardingprofiles"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/forwardingProfiles?$filter=trafficForwardingType eq 'internet'
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.forwardingProfile"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "trafficForwardingType": "internet",
  "priority": 2,
  "id": "bbbbbbbb-1111-2222-3333-cccccccccccc",
  "name": "Internet traffic forwarding profile",
  "description": "Default traffic forwarding profile for Internet traffic acquisition. Assign the profile to client or branch offices to acquire Internet traffic for Zero Trust Network Access.Internet traffic forwarding profile will exclude all endpoints defined in Microsoft 365 traffic forwarding profile.",
  "state": "enabled",
  "version": "1.0.0",
  "lastModifiedDateTime": "2025-01-14T13:11:57.9295327Z",
  "associations": [],
  "servicePrincipal": {
    "appId": "00001111-aaaa-2222-bbbb-3333cccc4444",
    "id": "aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb"
  }
}
```

### Step 1.2: Enable the state of Internet Access forwarding profile

The request returns a `204 No Content` response.

#### Request

<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_enable_forwardingprofiles"
}-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/bbbbbbbb-1111-2222-3333-cccccccccccc
Content-type: application/json

{
  "state": "enabled"
}
```

## Step 2: Create a web content filtering policy and security profile

To configure policies in Microsoft Entra Internet Access, you first need to create a filtering policy, which is a collection of rules governing access to destinations like web categories and Fully Qualified Domain Names (FQDNs). For example, you can create a filtering policy with rules that block access to the Artificial Intelligence category and individual FQDNs. Then you organize filtering policies into a security profile that you can target with Conditional Access policies.

### Step 2.1: Create a web content filtering policy

In this example, you create a filtering policy with rules that block access to the "Artificial Intelligence" category and FQDNs for `bing.com`. Once this policy is created, take note of the filtering policy ID for linking in the filtering profile.

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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-configure-entrainternetaccess-create-filteringpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-configure-entrainternetaccess-create-filteringpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-configure-entrainternetaccess-create-filteringpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-configure-entrainternetaccess-create-filteringpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-configure-entrainternetaccess-create-filteringpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-configure-entrainternetaccess-create-filteringpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-configure-entrainternetaccess-create-filteringpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "id": "cccccccc-2222-3333-4444-dddddddddddd",
  "name": "AI and Bing",
  "description": null,
  "version": "1.0.0",
  "lastModifiedDateTime": "2025-02-05T18:10:28.9760687Z",
  "createdDateTime": "2025-02-05T18:10:27Z",
  "action": "block"
}
```

### Step 2.2: Edit or update the web content filtering policy

After creating a filtering policy, you can programmatically edit or update it. You can add new rules to the policy by sending a POST request or update destinations in existing rules using a PATCH request. Either of these changes allow you to adjust filtering policies as your organization's needs change, such as blocking more categories or domains, or modifying existing rules. 

In this example, you use a PATCH request to add a destination to the rule created in step 2.1.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_edit_filteringPolicy"
}-->
```http
POST https://graph.microsoft.com/beta/networkaccess/filteringPolicies('cccccccc-2222-3333-4444-dddddddddddd')/policyRules('<policyRuleId>')
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.fqdnFilteringRule",
  "destinations": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.fqdn",
      "value": "bing.com"
    },
    {
      "@odata.type": "#microsoft.graph.networkaccess.fqdn",
      "value": "*.bing.com"
    },
    {
      "@odata.type": "#microsoft.graph.networkaccess.fqdn",
      "value": "bing.co.uk"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-configure-entrainternetaccess-edit-filteringpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "#microsoft.graph.networkaccess.fqdnFilteringRule"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.fqdnFilteringRule",
  "id": "cccccccc-2222-3333-4444-dddddddddddd",
  "name": "bing FQDNs",
  "ruleType": "fqdn",
  "destinations": [
    {
        "@odata.type": "#microsoft.graph.networkaccess.fqdn",
        "value": "google.co.uk"
    },
    {
        "@odata.type": "#microsoft.graph.networkaccess.fqdn",
        "value": "google.com"
    },
    {
        "@odata.type": "#microsoft.graph.networkaccess.fqdn",
        "value": "bing.com"
    }
  ]
}
```

### Step 2.3: Create a filtering profile or security profile

Create a filtering or security profile to hold your policies and target it in Conditional Access session control. After creating the profile, note the filtering profile ID for later use in the Conditional Access policy.

#### Request

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
  "priority": 100,
  "createdDateTime": "2025-02-05T18:27:31Z",
  "id": "dddddddd-3333-4444-5555-eeeeeeeeeeee",
  "name": "Security Profile for UserA",
  "description": null,
  "state": "enabled",
  "version": "1.0.0",
  "lastModifiedDateTime": "2025-02-05T18:27:31.660891Z"
}
```

### Step 2.4: Link the filtering policy to the filtering profile or security profile

#### Request

<!-- {
  "blockType": "request",
  "name": "tutorial_configure_entrainternetaccess_link_filteringPolicy"
}-->
```http
POST https://graph.microsoft.com/beta/networkaccess/filteringProfiles/dddddddd-3333-4444-5555-eeeeeeeeeeee/policies
Content-type: application/json

{
  "priority": 100,
    "state": "enabled",
    "@odata.type": "#microsoft.graph.networkaccess.filteringPolicyLink",
    "loggingState": "enabled",
    "policy": {
        "id": "cccccccc-2222-3333-4444-dddddddddddd",
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
    "id": "dddddddd-9999-0000-1111-eeeeeeeeeeee",
    "priority": 100,
    "state": "enabled",
    "version": "1.0.0",
    "loggingState": "enabled",
    "lastModifiedDateTime": "2025-02-05T18:31:32Z",
    "createdDateTime": "2025-02-05T18:31:32Z",
    "policy": {
        "@odata.type": "#microsoft.graph.networkaccess.filteringPolicy",
        "id": "cccccccc-2222-3333-4444-dddddddddddd",
        "name": "AI and Bing",
        "description": null,
        "version": "1.0.0",
        "lastModifiedDateTime": "2025-02-05T18:15:17.0759384Z",
        "createdDateTime": "2025-02-05T18:15:16Z",
        "action": "block"
    }
}
```

## Step 3: Link a Conditional Access policy

To enforce your filtering profile, you need to link it to a Conditional Access (CA) policy. Doing so makes the contents of your filtering profile user- and context-aware. In this step, you create a CA policy with the following settings:

- Target it to a user with ID `00aa00aa-bb11-cc22-dd33-44ee44ee44ee` and the app "All internet resources with Global Secure Access" with **appId** `5dc48733-b5df-475c-a49b-fa307ef00853`.
- Configure a session control with **globalSecureAccessFilteringProfile** ID `dddddddd-9999-0000-1111-eeeeeeeeeeee`.

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
                "00aa00aa-bb11-cc22-dd33-44ee44ee44ee"
            ]
        }
    },
    "displayName": "UserA Access to AI and Bing",
    "sessionControls": {
        "globalSecureAccessFilteringProfile": {
            "profileId": "dddddddd-9999-0000-1111-eeeeeeeeeeee",
            "isEnabled": true
        }
    },
    "state": "enabled"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-configure-entrainternetaccess-create-conditionalaccess-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-configure-entrainternetaccess-create-conditionalaccess-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-configure-entrainternetaccess-create-conditionalaccess-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-configure-entrainternetaccess-create-conditionalaccess-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-configure-entrainternetaccess-create-conditionalaccess-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-configure-entrainternetaccess-create-conditionalaccess-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
                "00aa00aa-bb11-cc22-dd33-44ee44ee44ee"
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
        "globalSecureAccessFilteringProfile": {
            "profileId": "dddddddd-9999-0000-1111-eeeeeeeeeeee",
            "isEnabled": true
        }
    }
}
```

## Conclusion

Now that you've configured a security profile or filtering profile blocking the Artificial Intelligence and `bing.com` for the sample user, that user is blocked from accessing those sites.

## Related content

- [Microsoft Security Service Edge Solution Deployment Guide for Microsoft Entra Internet Access Proof of Concept](/entra/architecture/gsa-deployment-guide-internet-access)
- [Tutorial: Configure Microsoft Entra Internet Access using Microsoft Graph APIs](/graph/tutorial-entra-internet-access)
