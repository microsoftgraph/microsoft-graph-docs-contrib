---
title: Identify and remediate risk by using ID Protection APIs
description: Learn how to use Microsoft Entra ID Protection APIs to identify and remediate identity-based risks, ensuring the security of user accounts.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Etan.Basseri
ms.localizationpriority: medium
ms.subservice: entra-sign-in
ms.date: 03/17/2025

#customer intent: As a developer, I want to identify and remediate identity-based risks using ID Protection APIs so that I can ensure the security of user accounts.
ms.topic: how-to
---

# Identify and remediate risks by using identity protection APIs

Microsoft Entra ID Protection offers organizations insights into identity-based risks and methods to investigate and automatically remediate these risks. This tutorial guides you through using ID Protection APIs to identify risks and set up workflows for confirming compromises or enabling remediation.

In this tutorial, you learn how to use ID Protection APIs to:
> [!div class="checklist"]
> * Generate a risky sign-in.
> * Allow users with risky sign-ins to remediate the risk status with a Conditional Access policy that requires multi-factor authentication (MFA).
> * Block a user from signing in using a Conditional Access policy.
> * Dismiss a user risk.

## Prerequisites

To complete this tutorial, ensure you have:
- A Microsoft Entra tenant with a Microsoft Entra ID P1 or P2 license.
- Access to an API client like [Graph Explorer](https://aka.ms/ge), signed in with an account that has the *Conditional Access Administrator* role.
- The following delegated permissions: *IdentityRiskEvent.Read.All*, *IdentityRiskyUser.ReadWrite.All*, *Policy.Read.All*, *Policy.ReadWrite.ConditionalAccess*, and *User.ReadWrite.All*.
- A test user account to sign in to an anonymous session to trigger a risk detection. Use a private browsing session or the Tor browser. In this tutorial, the test user mail nickname is `MyTestUser1`.

## Step 1: Trigger a risk detection

In the anonymous browser session, sign in to the [Microsoft Entra admin centre](https://entra.microsoft.com) as `MyTestUser1`.

## Step 2: List risk detections

When **MyTestUser1** signed in to the Microsoft Entra admin center using the anonymous browser, an `anonymizedIPAddress` risk event was detected. You can use the `$filter` query parameter to get only the risk detections that are associated with the **MyTestUser1** user account. It might take a few minutes for the event to be returned.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_riskdetection_get_riskdetections"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityProtection/riskDetections?$filter=userDisplayName eq 'MyTestUser1'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-riskdetection-get-riskdetections-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-riskdetection-get-riskdetections-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-riskdetection-get-riskdetections-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-riskdetection-get-riskdetections-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-riskdetection-get-riskdetections-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-riskdetection-get-riskdetections-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-riskdetection-get-riskdetections-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.riskDetection"
} -->
```http
HTTP/1.1 20O OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#riskDetections",
  "value": [
    {
      "id": "d52a631815aaa527bf642b196715da5cf0f35b6879204ea5b5c99b21bd4c16f4",
      "requestId": "06f7fd18-b8f1-407d-86a3-f6cbe3a4be00",
      "correlationId": "2a38abff-5701-4073-a81e-fd3aac09cba3",
      "riskType": "anonymizedIPAddress",
      "riskEventType": "anonymizedIPAddress",
      "riskState": "atRisk",
      "riskLevel": "medium",
      "riskDetail": "none",
      "source": "IdentityProtection",
      "detectionTimingType": "realtime",
      "activity": "signin",
      "tokenIssuerType": "AzureAD",
      "ipAddress": "178.17.170.23",
      "activityDateTime": "2020-11-03T20:51:34.6245276Z",
      "detectedDateTime": "2020-11-03T20:51:34.6245276Z",
      "lastUpdatedDateTime": "2020-11-03T20:53:12.1984203Z",
      "userId": "4628e7df-dff3-407c-a08f-75f08c0806dc",
      "userDisplayName": "MyTestUser1",
      "userPrincipalName": "MyTestUser1@contoso.com",
      "additionalInfo": "[{\"Key\":\"userAgent\",\"Value\":\"Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0\"}]",
      "location": {
        "city": "Chisinau",
        "state": "Chisinau",
        "countryOrRegion": "MD",
        "geoCoordinates": {
          "latitude": 47.0269,
          "longitude": 28.8416
        }
      }
    }
  ]
}
```

## Step 3: Create a Conditional Access policy

Conditional Access policies allow users to self-remediate when a risk is detected, enabling them to securely access resources after completing the policy prompt. In this step, you'll create a Conditional Access policy that requires users to sign in using MFA if a medium or high-risk detection occurs.

### Set up multifactor authentication

When setting up an account for MFA, choose the best authentication method for your situation.

1. Sign in to the [keep your account secure](https://aka.ms/MFASetup) site using the **MyTestUser1** account.
2. Complete the MFA setup procedure using the appropriate method for your situation, such as using the Microsoft Authenticator app.

### Create the Conditional Access policy

The Conditional Access policy lets you set conditions to identify sign-in risk levels. Risk levels can be `low`, `medium`, `high`, or `none`. The following example shows how to require MFA for sign-ins with medium and high risk levels.

#### Request 

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_riskdetection_create_conditionalaccesspolicy"
}-->
```http
POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies 
Content-type: application/json
 
{ 
  "displayName": "Policy for risky sign-in", 
  "state": "enabled", 
  "conditions": { 
    "signInRiskLevels": [ 
      "high", 
      "medium" 
    ], 
    "applications": { 
      "includeApplications": ["All"]
    }, 
    "users": { 
      "includeUsers": [ 
        "4628e7df-dff3-407c-a08f-75f08c0806dc" 
      ] 
    } 
  }, 
  "grantControls": { 
    "operator": "OR", 
    "builtInControls": [ 
      "mfa" 
    ] 
  } 
} 
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-riskdetection-create-conditionalaccesspolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-riskdetection-create-conditionalaccesspolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-riskdetection-create-conditionalaccesspolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-riskdetection-create-conditionalaccesspolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-riskdetection-create-conditionalaccesspolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-riskdetection-create-conditionalaccesspolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-riskdetection-create-conditionalaccesspolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
} -->
```
HTTP/1.1 201 Created
Content-type: application/json

{ 
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/conditionalAccess/policies/$entity", 
  "id": "9ad78153-b1f8-4714-adc1-1445727678a8", 
  "displayName": "Policy for risky sign-in", 
  "createdDateTime": "2020-11-03T20:56:38.6210843Z", 
  "modifiedDateTime": null, 
  "state": "enabled", 
  "sessionControls": null, 
  "conditions": { 
    "signInRiskLevels": [ 
      "high", 
      "medium" 
    ], 
    "clientAppTypes": [  
      "all"  
    ], 
    "platforms": null, 
    "locations": null, 
    "applications": { 
      "includeApplications": [ 
        "All" 
      ], 
      "excludeApplications": [], 
      "includeUserActions": [] 
    }, 
    "users": { 
      "includeUsers": [ 
        "4628e7df-dff3-407c-a08f-75f08c0806dc" 
      ], 
      "excludeUsers": [], 
      "includeGroups": [], 
      "excludeGroups": [], 
      "includeRoles": [], 
      "excludeRoles": [] 
    } 
  }, 
  "grantControls": { 
    "operator": "OR", 
    "builtInControls": [ 
      "mfa" 
    ], 
    "customAuthenticationFactors": [], 
    "termsOfUse": [] 
  } 
} 
```

## Step 4: Trigger another risky sign in but complete multifactor authentication 

By signing in to the anonymous browser, a risk is detected, but you remediate it by completing MFA. 

Sign in to **entra.microsoft.com** using the **MyTestUser1** account and complete the MFA process. 

## Step 5: List risk detections

Rerun the request in Step 2 to get the latest risk detection for the **MyTestUser1** user account. Because MFA was completed in Step 4, the **riskState** for this latest sign in event is now `remediated`.

## [Optional] Block the user from signing in

If you prefer to block users associated with risky sign-ins instead of allowing self-remediation, create a new Conditional Access policy. This policy will block users from signing in if a medium or high-risk detection occurs. The key difference from the policy in Step 3 is that the **builtInControls** is now set to `block`.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_riskdetection_block_user"
}-->
```http
POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies
Content-type: application/json

{
  "displayName": "Policy for risky sign-in block access",
  "state": "enabled",
  "conditions": {
    "signInRiskLevels": [
      "high",
      "medium"
    ],
    "applications": {
      "includeApplications": ["All"]
    },
    "users": {
      "includeUsers": [
        "4628e7df-dff3-407c-a08f-75f08c0806dc"
      ]
    }
  },
  "grantControls": {
    "operator": "OR",
    "builtInControls": [
      "block"
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-riskdetection-block-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-riskdetection-block-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-riskdetection-block-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-riskdetection-block-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-riskdetection-block-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-riskdetection-block-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-riskdetection-block-user-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/conditionalAccess/policies/$entity",
  "id": "9ad78153-b1f8-4714-adc1-1445727678a8",
  "displayName": "Policy for risky sign-in block access",
  "createdDateTime": "2020-11-03T20:56:38.6210843Z",
  "modifiedDateTime": null,
  "state": "enabled",
  "sessionControls": null,
  "conditions": {
    "signInRiskLevels": [
      "high",
      "medium"
    ],
    "clientAppTypes": [ 
      "all" 
    ],
    "platforms": null,
    "locations": null,
    "applications": {
      "includeApplications": [
        "All"
      ],
      "excludeApplications": [],
      "includeUserActions": []
    },
    "users": {
      "includeUsers": [
        "4628e7df-dff3-407c-a08f-75f08c0806dc"
      ],
      "excludeUsers": [],
      "includeGroups": [],
      "excludeGroups": [],
      "includeRoles": [],
      "excludeRoles": []
    }
  },
  "grantControls": {
    "operator": "OR",
    "builtInControls": [
      "block"
    ],
    "customAuthenticationFactors": [],
    "termsOfUse": []
  }
}
```

With this Conditional Access policy in place, **MyTestUser1** account is now blocked from signing in due to a medium or high sign-in risk level.

![Blocked sign-in](./images/tutorials-identity/tutorial-risk-detection.conditionalaccess-policy.png)

## Step 6: Dismiss risky users

If you believe the user isn't at risk and don't want to enforce a Conditional Access policy, manually dismiss the risky user as shown in the following request. The request returns a `204 No Content` response.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_riskdetection_riskyusers.dismiss"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/dismiss
Content-Type: application/json

{
  "userIds": [
    "4628e7df-dff3-407c-a08f-75f08c0806dc"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-riskdetection-riskyusersdismiss-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-riskdetection-riskyusersdismiss-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-riskdetection-riskyusersdismiss-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-riskdetection-riskyusersdismiss-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-riskdetection-riskyusersdismiss-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-riskdetection-riskyusersdismiss-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-riskdetection-riskyusersdismiss-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

After dismissing the risk user, you can rerun the request in Step 2 and will notice that the **MyTestUser1** user account now has a risk level of `none` and a riskState of `dismissed`.

## Step 7: Clean up resources

In this step, delete the two Conditional Access policies you created. The request returns a `204 No Content` response.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_riskdetection_delete_group"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies/9ad78153-b1f8-4714-adc1-1445727678a8
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-riskdetection-delete-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-riskdetection-delete-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-riskdetection-delete-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-riskdetection-delete-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-riskdetection-delete-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-riskdetection-delete-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-riskdetection-delete-group-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Related content

- [What is Identity Protection?](/azure/active-directory/identity-protection/overview-identity-protection)
- [Use the Microsoft Graph identity protection APIs](/graph/api/resources/identityprotection-overview)
