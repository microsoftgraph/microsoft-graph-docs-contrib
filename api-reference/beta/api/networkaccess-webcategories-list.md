---
title: "List webCategories"
description: "Get a list of the web Categories and their properties."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List filteringPolicyLinks
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the web Categories and their properties

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccess.Read.All|
|Delegated (personal Microsoft account)| Not supported|
|Application|NetworkAccess.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.networkaccess.filteringPolicyLink not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [filteringPolicyLink](../resources/filteringpolicylink.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_filteringpolicylink"
}
-->
``` http
GET https://graph.microsoft-ppe.com/beta/networkAccess/settings/connectivity/webCategories
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.filteringPolicyLink)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
    "@odata.context": "https://graph.microsoft-ppe.com/beta/$metadata#networkAccess/connectivity/webCategories",
    "value": [
        {
            "name": "AlcoholAndTobacco",
            "displayName": "Alcohol & Tobacco",
            "group": "Liability"
        },
        {
            "name": "ChildAbuseImages",
            "displayName": "Child Abuse Images",
            "group": "Liability"
        },
        {
            "name": "ChildInappropriate",
            "displayName": "Child Inappropriate",
            "group": "Liability"
        },
        {
            "name": "CriminalActivity",
            "displayName": "Criminal Activity",
            "group": "Liability"
        },
        {
            "name": "DatingAndPersonals",
            "displayName": "Dating & Personals",
            "group": "Liability"
        },
        {
            "name": "Gambling",
            "displayName": "Gambling",
            "group": "Liability"
        },
        {
            "name": "Hacking",
            "displayName": "Hacking",
            "group": "Liability"
        },
        {
            "name": "HateAndIntolerance",
            "displayName": "Hate & Intolerance",
            "group": "Liability"
        },
        {
            "name": "IllegalDrug",
            "displayName": "Illegal Drug",
            "group": "Liability"
        },
        {
            "name": "IllegalSoftware",
            "displayName": "Illegal Software",
            "group": "Liability"
        },
        {
            "name": "LingerieAndSwimsuits",
            "displayName": "Lingerie & Swimsuits",
            "group": "Liability"
        },
        {
            "name": "Marijuana",
            "displayName": "Marijuana",
            "group": "Liability"
        },
        {
            "name": "Nudity",
            "displayName": "Nudity",
            "group": "Liability"
        },
        {
            "name": "PornographyAndSexuallyExplicit",
            "displayName": "Pornography/Sexually Explicit",
            "group": "Liability"
        },
        {
            "name": "SchoolCheating",
            "displayName": "School Cheating",
            "group": "Liability"
        },
        {
            "name": "SelfHarm",
            "displayName": "Self-Harm",
            "group": "Liability"
        },
        {
            "name": "SexEducation",
            "displayName": "Sex Education",
            "group": "Liability"
        },
        {
            "name": "Tasteless",
            "displayName": "Tasteless",
            "group": "Liability"
        },
        {
            "name": "Violence",
            "displayName": "Violence",
            "group": "Liability"
        },
        {
            "name": "Weapons",
            "displayName": "Weapons",
            "group": "Liability"
        },
        {
            "name": "ImageSharing",
            "displayName": "Image Sharing",
            "group": "HighBandwidth"
        },
        {
            "name": "PeerToPeer",
            "displayName": "Peer-to-Peer",
            "group": "HighBandwidth"
        },
        {
            "name": "StreamingMediaAndDownloads",
            "displayName": "Streaming Media & Downloads",
            "group": "HighBandwidth"
        },
        {
            "name": "DownloadSites",
            "displayName": "Download Sites",
            "group": "HighBandwidth"
        },
        {
            "name": "Entertainment",
            "displayName": "Entertainment",
            "group": "HighBandwidth"
        },
        {
            "name": "Business",
            "displayName": "Business",
            "group": "BusinessUse"
        },
        {
            "name": "ComputersAndTechnology",
            "displayName": "Computers & Technology",
            "group": "BusinessUse"
        },
        {
            "name": "Education",
            "displayName": "Education",
            "group": "BusinessUse"
        },
        {
            "name": "Finance",
            "displayName": "Finance",
            "group": "BusinessUse"
        },
        {
            "name": "ForumsAndNewsgroups",
            "displayName": "Forums & Newsgroups",
            "group": "BusinessUse"
        },
        {
            "name": "Government",
            "displayName": "Government",
            "group": "BusinessUse"
        },
        {
            "name": "HealthAndMedicine",
            "displayName": "Health & Medicine",
            "group": "BusinessUse"
        },
        {
            "name": "InformationSecurity",
            "displayName": "Information Security",
            "group": "BusinessUse"
        },
        {
            "name": "JobSearch",
            "displayName": "Job Search",
            "group": "BusinessUse"
        },
        {
            "name": "News",
            "displayName": "News",
            "group": "BusinessUse"
        },
        {
            "name": "NonProfitsAndNgos",
            "displayName": "Non-profits & NGOs",
            "group": "BusinessUse"
        },
        {
            "name": "PersonalSites",
            "displayName": "Personal Sites",
            "group": "BusinessUse"
        },
        {
            "name": "PrivateIPAddresses",
            "displayName": "Private IP Addresses",
            "group": "BusinessUse"
        },
        {
            "name": "ProfessionalNetworking",
            "displayName": "Professional Networking",
            "group": "BusinessUse"
        },
        {
            "name": "SearchEnginesAndPortals",
            "displayName": "Search Engines & Portals",
            "group": "BusinessUse"
        },
        {
            "name": "Translators",
            "displayName": "Translators",
            "group": "BusinessUse"
        },
        {
            "name": "WebRepositoryAndStorage",
            "displayName": "Personal Storage + File Repository",
            "group": "BusinessUse"
        },
        {
            "name": "WebBasedEmail",
            "displayName": "Web-based Email",
            "group": "BusinessUse"
        },
        {
            "name": "AdvertisementsAndPopUps",
            "displayName": "Advertisements & Pop-Ups",
            "group": "Productivity"
        },
        {
            "name": "Chat",
            "displayName": "Chat",
            "group": "Productivity"
        },
        {
            "name": "Cults",
            "displayName": "Cults",
            "group": "Productivity"
        },
        {
            "name": "Games",
            "displayName": "Games",
            "group": "Productivity"
        },
        {
            "name": "InstantMessaging",
            "displayName": "Instant Messaging",
            "group": "Productivity"
        },
        {
            "name": "Shopping",
            "displayName": "Shopping",
            "group": "Productivity"
        },
        {
            "name": "SocialNetworking",
            "displayName": "Social Networking",
            "group": "Productivity"
        },
        {
            "name": "Arts",
            "displayName": "Arts",
            "group": "GeneralSurfing"
        },
        {
            "name": "FashionAndBeauty",
            "displayName": "Fashion & Beauty",
            "group": "GeneralSurfing"
        },
        {
            "name": "General",
            "displayName": "General",
            "group": "GeneralSurfing"
        },
        {
            "name": "GreetingCards",
            "displayName": "Greeting cards",
            "group": "GeneralSurfing"
        },
        {
            "name": "LeisureAndRecreation",
            "displayName": "Leisure & Recreation",
            "group": "GeneralSurfing"
        },
        {
            "name": "NatureAndConservation",
            "displayName": "Nature & Conservation",
            "group": "GeneralSurfing"
        },
        {
            "name": "PoliticsAndLaw",
            "displayName": "Politics & Law",
            "group": "GeneralSurfing"
        },
        {
            "name": "RealEstate",
            "displayName": "Real Estate",
            "group": "GeneralSurfing"
        },
        {
            "name": "Religion",
            "displayName": "Religion",
            "group": "GeneralSurfing"
        },
        {
            "name": "RestaurantsAndDining",
            "displayName": "Restaurants & Dining",
            "group": "GeneralSurfing"
        },
        {
            "name": "Sports",
            "displayName": "Sports",
            "group": "GeneralSurfing"
        },
        {
            "name": "Transportation",
            "displayName": "Transportation",
            "group": "GeneralSurfing"
        },
        {
            "name": "Travel",
            "displayName": "Travel",
            "group": "GeneralSurfing"
        },
        {
            "name": "Uncategorized",
            "displayName": "Unknown",
            "group": "Uncategorized"
        },
        {
            "name": "RemoteAccess",
            "displayName": "Remote Access",
            "group": "Ungrouped"
        },
        {
            "name": "Malware",
            "displayName": "Malware",
            "group": "Ungrouped"
        },
        {
            "name": "CryptocurrencyMining",
            "displayName": "Cryptocurrency Mining",
            "group": "Ungrouped"
        },
        {
            "name": "ZeroDayMalware",
            "displayName": "Zero Day Malware",
            "group": "Ungrouped"
        },
        {
            "name": "SuspectedMalware",
            "displayName": "Suspected Malware",
            "group": "Ungrouped"
        },
        {
            "name": "Anonymizers",
            "displayName": "Anonymizers",
            "group": "Ungrouped"
        },
        {
            "name": "WebPhone",
            "displayName": "Web Phone",
            "group": "Ungrouped"
        },
        {
            "name": "WebMeetings",
            "displayName": "Web Meetings",
            "group": "Ungrouped"
        },
        {
            "name": "PhishingAndFraud",
            "displayName": "Phishing & Fraud",
            "group": "Ungrouped"
        },
        {
            "name": "GayOrLesbianOrBisexual",
            "displayName": "Gay or Lesbian or Bisexual",
            "group": "Ungrouped"
        },
        {
            "name": "Compromised",
            "displayName": "Compromised",
            "group": "Ungrouped"
        },
        {
            "name": "NetworkErrors",
            "displayName": "Network Errors",
            "group": "Ungrouped"
        },
        {
            "name": "CommandAndControl",
            "displayName": "Command and Control",
            "group": "Ungrouped"
        },
        {
            "name": "ZeroDayPhishing",
            "displayName": "Zero Day Phishing",
            "group": "Ungrouped"
        },
        {
            "name": "SuspectedPhishing",
            "displayName": "Suspected Phishing",
            "group": "Ungrouped"
        },
        {
            "name": "ParkedDomains",
            "displayName": "Parked Domains",
            "group": "Ungrouped"
        },
        {
            "name": "Botnets",
            "displayName": "Botnets",
            "group": "Ungrouped"
        },
        {
            "name": "SpamSites",
            "displayName": "Spam Sites",
            "group": "Ungrouped"
        }
    ]
}
```


