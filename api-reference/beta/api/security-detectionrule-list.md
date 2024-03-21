---
title: "List detectionRules"
description: "Get a list of the custom detection rules and their properties."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List detectionRules
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [custom detection rules](../resources/security-detectionrule.md).
With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured assets in their organization network.
Custom detection rules, which are written in [Kusto query language (KQL)](/azure/data-explorer/kusto/query/), automatically trigger [alerts](../resources/security-alert.md) and response actions once there are events matching their KQL queries.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_detectionrule_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-detectionrule-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/rules/detectionRules
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [detectionRule](../resources/security-detectionrule.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_detectionrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/rules/detectionRules?$top=3
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-detectionrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-detectionrule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-detectionrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-detectionrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-detectionrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-detectionrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-detectionrule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.detectionRule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.detectionRule",
      "id": "7506",
      "displayName": "ban file",
      "isEnabled": true,
      "createdBy": "NaderK@winatptestlic06.ccsctp.net",
      "createdDateTime": "2021-02-28T16:28:15.3863467Z",
      "lastModifiedDateTime": "2023-05-24T09:26:11.8630516Z",
      "lastModifiedBy": "GlobalAdmin@unifiedrbactest3.ccsctp.net",
      "detectorId": "67895317-b2a8-4ac3-8f8b-fa6b7765f2fe",
      "queryCondition": {
        "queryText": "DeviceFileEvents\r\n| where Timestamp > ago(1h)\r\n| where FileName == \"ifz30zlx.dll\"",
        "lastModifiedDateTime": null
      },
      "schedule": {
        "period": "24H",
        "nextRunDateTime": "2023-06-26T08:52:06.1766667Z"
      },
      "lastRunDetails": {
        "lastRunDateTime": "2023-06-25T08:52:06.1766667Z",
        "status": null,
        "failureReason": null,
        "errorCode": null
      },
      "detectionAction": {
        "alertTemplate": {
          "title": "unwanted dll",
          "description": "test",
          "severity": "low",
          "category": "Malware",
          "recommendedActions": null,
          "mitreTechniques": [],
          "impactedAssets": []
        },
        "organizationalScope": null,
        "responseActions": [
          {
            "@odata.type": "#microsoft.graph.security.restrictAppExecutionResponseAction",
            "identifier": "deviceId"
          },
          {
            "@odata.type": "#microsoft.graph.security.initiateInvestigationResponseAction",
            "identifier": "deviceId"
          },
          {
            "@odata.type": "#microsoft.graph.security.collectInvestigationPackageResponseAction",
            "identifier": "deviceId"
          },
          {
            "@odata.type": "#microsoft.graph.security.runAntivirusScanResponseAction",
            "identifier": "deviceId"
          },
          {
            "@odata.type": "#microsoft.graph.security.isolateDeviceResponseAction",
            "isolationType": "full",
            "identifier": "deviceId"
          },
          {
            "@odata.type": "#microsoft.graph.security.blockFileResponseAction",
            "identifier": "sha1",
            "deviceGroupNames": []
          }
        ]
      }
    },
    {
      "@odata.type": "#microsoft.graph.security.detectionRule",
      "id": "8575",
      "displayName": "Continuous_EmailAttachmentInfo_Mod300",
      "isEnabled": true,
      "createdBy": "rony@winatptestlic06.ccsctp.net",
      "createdDateTime": "2021-11-03T21:32:01.6144651Z",
      "lastModifiedDateTime": "2022-11-03T19:27:14.4187141Z",
      "lastModifiedBy": "InESecAdmin@winatptestlic06.ccsctp.net",
      "detectorId": "56ef4994-fe31-4ac9-b29f-0ca2f2cc9112",
      "queryCondition": {
        "queryText": "EmailAttachmentInfo\r\n| extend second = datetime_diff('second',now(),Timestamp)\r\n| where second % 300 == 0 ",
        "lastModifiedDateTime": "2022-11-03T19:27:14.4331537Z"
      },
      "schedule": {
        "period": "0",
        "nextRunDateTime": "2021-11-03T21:32:01.7863185Z"
      },
      "lastRunDetails": {
        "lastRunDateTime": "2021-11-03T21:32:01.7863185Z",
        "status": null,
        "failureReason": null,
        "errorCode": null
      },
      "detectionAction": {
        "alertTemplate": {
          "title": "EmailAttachmentInfo",
          "description": "EmailAttachmentInfo",
          "severity": "low",
          "category": "Exfiltration",
          "recommendedActions": "EmailAttachmentInfo",
          "mitreTechniques": [],
          "impactedAssets": [
            {
              "@odata.type": "#microsoft.graph.security.impactedMailboxAsset",
              "identifier": "recipientEmailAddress"
            },
            {
              "@odata.type": "#microsoft.graph.security.impactedUserAsset",
              "identifier": "recipientObjectId"
            }
          ]
        },
        "organizationalScope": null,
        "responseActions": [
          {
            "@odata.type": "#microsoft.graph.security.moveToDeletedItemsResponseAction",
            "identifier": "networkMessageId, recipientEmailAddress"
          }
        ]
      }
    },
    {
      "@odata.type": "#microsoft.graph.security.detectionRule",
      "id": "9794",
      "displayName": "UPDATED DET: Office/LoLBin Network Connection to Low-Reputation TLD",
      "isEnabled": true,
      "createdBy": "NaderK@winatptestlic06.ccsctp.net",
      "createdDateTime": "2022-02-02T10:26:01.7708581Z",
      "lastModifiedDateTime": "2022-02-02T10:26:01.7708581Z",
      "lastModifiedBy": "NaderK@winatptestlic06.ccsctp.net",
      "detectorId": "67aa92a1-b04b-4f2a-a223-236968a3da96",
      "queryCondition": {
        "queryText": "//https://www.spamhaus.org/statistics/tlds/      http://www.surbl.org/tld       https://www.iana.org/domains/root/db      https://unit42.paloaltonetworks.com/top-level-domains-cybercrime/\r\nDeviceNetworkEvents\r\n| where isnotempty(RemoteUrl) and RemoteIPType == \"Public\"\r\n| where InitiatingProcessFileName in~ (\"winword.exe\", \"excel.exe\", \"powerpnt.exe\", \"rundll32.exe\", \"regsvr32.exe\", \"certutil.exe\", \"bitsadmin.exe\", \"wscript.exe\", \"cscript.exe\", \"powershell.exe\", \"pwsh.exe\", \"powershell_ise.exe\")\r\n| extend TopLevelDomain=tolower(extract(@\"([A-Za-z0-9-]{1,63}\\.)+([A-Za-z]{2,10})\", 2, RemoteUrl))\r\n| where TopLevelDomain in (\"xyz\", \"top\", \"live\", \"loan\", \"club\", \"surf\", \"work\", \"biz\", \"ryukyu\", \"press\", \"ltd\", \"bid\", \"vip\", \"online\", \"download\" \"buzz\", \"cam\", \"ru\", \"cn\", \"ci\", \"ga\", \"gq\", \"tk\", \"tw\", \"ml\", \"cf\", \"cfd\", \"icu\", \"cm\")\r\n| extend TimeDiff=datetime_diff(\"Second\", Timestamp, InitiatingProcessCreationTime)\r\n| where TimeDiff < 30\r\n| project-reorder Timestamp, DeviceName, RemoteUrl, TopLevelDomain, TimeDiff, InitiatingProcessCommandLine, *\r\n//| summarize count() by InitiatingProcessFolderPath, TopLevelDomain, RemoteUrl",
        "lastModifiedDateTime": null
      },
      "schedule": {
        "period": "1H",
        "nextRunDateTime": "2023-06-25T10:17:06.4366667Z"
      },
      "lastRunDetails": {
        "lastRunDateTime": "2023-06-25T09:17:06.4366667Z",
        "status": null,
        "failureReason": null,
        "errorCode": null
      },
      "detectionAction": {
        "alertTemplate": {
          "title": "updated Office/LoLBin Network Connection to Low-Reputation TLD",
          "description": "This is a custom detection created by the Centene Detection Engineering team.\n\nAn Office application or Living-Off-The-Land Binary made an immediate remote connection to a domain with a low-reputation top level domain after execution. This activity is suspicious as threat actors typically use low-reputation TLDs for malicious purposes, such as hosting payloads for potential targets. These TLDs are often abused because of their low cost and lack of oversite. The TLDs included in the list cover destinations that have either a high count or a high percentage of low-reputation sites. ",
          "severity": "low",
          "category": "CommandAndControl",
          "recommendedActions": "Check the reputation of the RemoteUrl through OSINT tools such as VirusTotal and Hybrid Analysis.\n\nReview the document and device timeline for additional context and IOCs. \n\nCheck for related alerts on the associated endpoint. ",
          "mitreTechniques": ["T1071.001"],
          "impactedAssets": [
            {
              "@odata.type": "#microsoft.graph.security.impactedDeviceAsset",
              "identifier": "deviceId"
            }
          ]
        },
        "organizationalScope": {
          "scopeType": "deviceGroup",
          "scopeNames": ["UnassignedGroup"]
        },
        "responseActions": []
      }
    }
  ]
}
```

