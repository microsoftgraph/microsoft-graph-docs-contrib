---
title: "Call records overview"
description: "Call records give you insights into the calls and meetings performed within your organization."
author: "stephenjust"
localization_priority: Normal
ms.prod: "microsoft-ic3"
---

# Call records overview

Call records provide usage and diagnostic information about the calls and online meetings occuring within your organization when using Microsoft Teams or Skype for Business. Usage and diagnostic data can be consumed to produce custom reporting for your business to help monitor adoption or to troubleshoot call quality issues.

Organizations can subscribe to changes to call records using Microsoft Graph's [webhook subscriptions](/graph/api/resources/webhooks?view=graph-rest-beta) capability, allowing them to build near-real-time reports from the data or to alert on certain scenarios like emergency calls.

> **Important:** Discretion should be used when granting the `CallRecords.Read.All` permission to applications. Call records can provide insights into the operation of your business, and so can be a target for malicious actors. Only grant this permission to applications you trust to meet your data protection requirements.

## Subscribe to call records

Organizations and partners often have their own tooling for generating reports about calls and online meetings. Using webhooks, they can receive a continuous feed of call records as they are created. This push-model enaables organizations and partners to build their own real-time reporting solutions.

## Look up a call record by its call id

Applications can retrieve a [call record](/graph/api/resources/callrecords-callrecord?view=graph-rest-beta) by its id. This id can be determined from a webhook notification or retrieved from odministrative tools.

## See also

- [Call records permissions](/graph/permissions-reference#call-records-permissions)
