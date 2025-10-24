---
title: "applicationSecurityCompliance resource type"
description: "Provides details about an application's adherence to security, privacy, and industry compliance frameworks such as ISO, SOC, HIPAA, and FedRAMP."
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# applicationSecurityCompliance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the compliance certifications, attestations, and standards that an [application](../resources/applicationtemplate.md) or service provider meets. These compliance frameworks are used to assess the application's alignment with recognized industry, government, and data protection requirements


## Properties
|Property|Type|Description|
|:---|:---|:---|
|cobit|Boolean|Indicates whether the application adheres to the Control Objectives for Information and Related Technologies (COBIT) framework.|
|coppa|Boolean|Indicates whether the application complies with the Children’s Online Privacy Protection Act (COPPA).|
|csaStar|csaStarLevel|Specifies the Cloud Security Alliance (CSA) Security, Trust & Assurance Registry (STAR) certification level. The possible values are: `none`, `attestation`, `certification`, `continuousMonitoring`, `cStarAssessment`, `selfAssessment`, `notSupported`, `unknownFutureValue`.|
|fedRamp|fedRampLevel|Specifies the Federal Risk and Authorization Management Program (FedRAMP) certification level. The possible values are: `none`, `high`, `liSaas`, `low`, `moderate`, `notSupported`, `unknownFutureValue`.|
|ferpa|Boolean|Indicates whether the application complies with the Family Educational Rights and Privacy Act (FERPA).|
|ffiec|Boolean|Indicates whether the application meets Federal Financial Institutions Examination Council (FFIEC) requirements.|
|finra|Boolean|Indicates whether the application complies with Financial Industry Regulatory Authority (FINRA) standards.|
|fisma|Boolean|Indicates whether the application complies with the Federal Information Security Management Act (FISMA).|
|gaap|Boolean|Indicates whether the application provider adheres to Generally Accepted Accounting Principles (GAAP).|
|gapp|Boolean|Indicates whether the application adheres to Generally Accepted Privacy Principles (GAPP).|
|glba|Boolean|Indicates whether the application complies with the Gramm–Leach–Bliley Act (GLBA) for financial data protection.|
|hipaa|Boolean|Indicates whether the application complies with the Health Insurance Portability and Accountability Act (HIPAA).|
|hitrust|Boolean|Indicates whether the application holds HITRUST certification, demonstrating alignment with healthcare and data security standards.|
|isae3402|Boolean|Indicates whether the application complies with International Standard on Assurance Engagements (ISAE) 3,402 requirements.|
|iso27001|Boolean|Indicates whether the application is certified against ISO/IEC 27001 for information security management systems (ISMS).|
|iso27002|Boolean|Indicates whether the application follows ISO/IEC 27002 security control best practices.|
|iso27017|Boolean|Indicates whether the application complies with ISO/IEC 27,017 standards for cloud security controls.|
|iso27018|Boolean|Indicates whether the application complies with ISO/IEC 27,018 standards for protecting personally identifiable information (PII) in cloud environments.|
|itar|Boolean|Indicates whether the application complies with International Traffic in Arms Regulations (ITAR).|
|jerichoForumCommandments|Boolean|Indicates whether the application aligns with Jericho Forum security principles for deperimeterized environments.|
|pci|pciVersion|Specifies the Payment Card Industry (PCI) Data Security Standard (DSS) version the application complies with. The possible values are: `none`, `v3_2_1`, `v4`, `notSupported`, `unknownFutureValue`.|
|privacyShield|Boolean|Indicates whether the application complies with the EU–U.S. Privacy Shield framework for cross-border data transfers.|
|safeHarbor|Boolean|Indicates whether the application previously adhered to the U.S.–EU Safe Harbor data transfer framework.|
|soc1|Boolean|Indicates whether the application provider undergoes a Service Organization Control (SOC) one audit report.|
|soc2|Boolean|Indicates whether the application provider undergoes a Service Organization Control (SOC) two audit report.|
|soc3|Boolean|Indicates whether the application provider undergoes a Service Organization Control (SOC) three audit report.|
|sox|Boolean|Indicates whether the application complies with the Sarbanes–Oxley Act (SOX) financial reporting requirements.|
|sp800_53|Boolean|Indicates whether the application aligns with National Institute of Standards and Technology (NIST) Special Publication 800-53 security and privacy controls.|
|ssae16|Boolean|Indicates whether the application adheres to Statement on Standards for Attestation Engagements (SSAE) No. 16.|
|ustr|Boolean|Indicates whether the application complies with U.S. Trade Representative (USTR) data and trade protection requirements.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationSecurityCompliance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationSecurityCompliance",
  "cobit": "Boolean",
  "coppa": "Boolean",
  "csaStar": "String",
  "ferpa": "Boolean",
  "ffiec": "Boolean",
  "finra": "Boolean",
  "fisma": "Boolean",
  "fedRamp": "String",
  "gaap": "Boolean",
  "gapp": "Boolean",
  "glba": "Boolean",
  "hipaa": "Boolean",
  "hitrust": "Boolean",
  "isae3402": "Boolean",
  "iso27001": "Boolean",
  "iso27002": "Boolean",
  "iso27017": "Boolean",
  "iso27018": "Boolean",
  "itar": "Boolean",
  "jerichoForumCommandments": "Boolean",
  "privacyShield": "Boolean",
  "soc1": "Boolean",
  "soc2": "Boolean",
  "soc3": "Boolean",
  "sox": "Boolean",
  "sp800_53": "Boolean",
  "ssae16": "Boolean",
  "safeHarbor": "Boolean",
  "ustr": "Boolean",
  "pci": "String"
}
```

