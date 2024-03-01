---
title: "Windows Release Information: Products, Product Lifecycle and known Issues information"
description: "Windows Servicing and Release Informations encompasses specific Product information, including product edition, known Issues, and lifecycle data. "
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: conceptualPageType
---

# Windows Release Information - Known Issues and Product Lifecycle 

Windows Servicing and Release information encompasses specific Product information, including product edition, known Issues, and lifecycle data.

| Windows Servicing       | Description                                                                                       |
|-------------|---------------------------------------------------------------------------------------------------|
| Known Issues | Windows release health known Issues refer to information about known problems or issues that may affect the stability or reliability of a particular Windows release or product. This data is collected and analyzed by Microsoft to identify potential issues with a Windows release and provide customers with information on how to address them. |
|Product Lifecycle| Product lifecycle data refers to information about the various stages of a product's existence, from its initial development to its eventual discontinuation. This data includes details such as release dates, end-of-life/servicing dates, and support timelines. Please refer to the following resources for more information: |

## Product Life Cycle (PLC) Scenarios

Refer to the following resource pages for more information:

|Resource|Type|Description|
|:---|:---|:---|
|product|[microsoft.graph.windowsUpdates.product](.../resources/windowsupdates-product.md)|Represents a Windows product.|
|editions|[microsoft.graph.windowsUpdates.edition](.../resources/windowsupdates-edition.md) | Represents an edition of a particular Windows product. |
|revisions|[microsoft.graph.windowsUpdates.productrevision](.../resources/windowsupdates-productrevision.md)|Represents a product revision.|

### Scenario 1: Get all editions for a particular product.

#### Example API Request and Response
##### REST API request
```http
GET /admin/windows/updates/products/{id}/editions
GET /admin/windows/updates/products({id})/editions
```
##### REST API response
```HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#collection(microsoft.graph.windowsUpdates.edition)",
    "value": [
        {
            "id": "1_4",
            "name": "Enterprise",
            "releasedName": "Windows 11 Enterprise",
            "deviceFamily": "Desktop",
            "isInService": true,
            "generalAvailabilityDateTime": "2022-09-20T00:00:00-07:00",
            "endOfServiceDateTime": "2025-10-14T00:00:00-07:00",
            "servicingPeriods": [
                {
                    "name": "Modern Lifecycle",
                    "startDateTime": "2022-09-20T00:00:00-07:00",
                    "endDateTime": "2025-10-14T00:00:00-07:00"
                }
            ]
        },
        {
            "id": "1_101",
            "name": "Core",
            "releasedName": "Windows 11 Home",
            "deviceFamily": "Desktop",
            "isInService": true,
            "generalAvailabilityDateTime": "2022-09-20T00:00:00-07:00",
            "endOfServiceDateTime": "2024-10-08T00:00:00-07:00",
            "servicingPeriods": [
                {
                    "name": "Modern Lifecycle",
                    "startDateTime": "2022-09-20T00:00:00-07:00",
                    "endDateTime": "2024-10-08T00:00:00-07:00"
                }
            ]
        }
    ]
}
```
### Scenario 2: Get all servicing periods for a particular edition of a particular product.

Each edition of a particular product may have one or more servicing periods. Knowing the end of service dates is critical information to IT admins.
The below query fiters the editions on id and expands the GetServicingPeriods array while selecting an additional property, 'name'.

#### Example API Request and Response
##### REST API request

```http
GET /admin/windows/updates/products({id})/editions({editionId})?$select=name,servicingPeriods
GET /admin/windows/updates/products/{id}/editions/{editionId}?$select=name,servicingPeriods
```
##### REST API response

```HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.windowsUpdates.edition)",
    "value": [
        {
            "name": "Enterprise",
            "servicingPeriods": [
                {
                    "name": "Modern Lifecycle",
                    "startDateTime": "2022-09-20T00:00:00-07:00",
                    "endDateTime": "2025-10-14T00:00:00-07:00"
                }...
            ]
        }
    ]
}

```
Similar queries can be used for getting more or less data points as per the need. 


### Scenario 3: Get all editions of all products with the service status. 

#### Example API Request and Response
##### REST API request
```http
GET /admin/windows/updates/products?expand=editions($select=name,isInService)
```
##### REST API response

```HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/products(editions(name,isInService))",
    "value": [
        {
            "id": "1",
            "name": "Windows 11, version 22H2",
            "groupName": "Windows 11",
            "friendlyNames": [
                "Version 22H2 (OS build 22621)"
            ],
            "editions": [
                {
                    "name": "Enterprise",
                    "isInService": true
                },
                {
                    "name": "Core",
                    "isInService": true
                }
            ]
        },
        {
            "id": "2",
            "name": "Windows 11, version 21H2",
            "groupName": "Windows 11",
            "friendlyNames": [
                "Version 21H2 (OS build 22000)"
            ],
            "editions": [
                {
                    "name": "Enterprise",
                    "isInService": true
                },
                {
                    "name": "Core",
                    "isInService": true
                }
            ]
        }
    ]
}
```


### Scenario 4: Get the general availability date of a particular edition belonging to a particular product. 

#### Example API Request and Response 
##### REST API request
```http
GET /admin/windows/updates/products({id})/editions({editionId})?$select=name,generalAvailabilityDateTime
GET /admin/windows/updates/products/{id}/editions/{editionId}?$select=name,generalAvailabilityDateTime
```
##### REST API response

```HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.windowsUpdates.edition)",
    "value": [
        {
            "name": "Enterprise",
            "generalAvailabilityDateTime": "2022-09-20T00:00:00-07:00"
        }
    ]
}
```
### Scenario 5: Get the product information based on end of servicing

It is important to know when products are reaching end of servicing (EOS). 

The below example showcases how a query can be used to find relevant information based on end of servicing.
#### Example API Request and Response

The followin example code showcases an example to get a list of all Products and editions which are reaching end of servicing before a particular date.  More conditions can be added to the query to get more specific results, like finding products reaching end of service between two dates etc.
##### REST API request

```http
GET /admin/windows/updates/Products?filter=editions/any(edition: edition/endOfServiceDateTime lt {date})&expand=editions(filter= endOfServiceDateTime lt {date}) 
```

##### REST API response

```HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.windowsUpdates.product)",
    "value": [
        {
            "id": "1",
            "name": "Windows 11, version 22H2",
            "groupName": "Windows 11",
            "friendlyNames": [
                "Version 22H2 (OS build 22621)"
            ],
            "editions": [
                {
                    "id": "1_101",
                    "name": "Core",
                    "releasedName": "Windows 11 Home",
                    "deviceFamily": "Desktop",
                    "isInService": true,
                    "generalAvailabilityDateTime": "2022-09-20T00:00:00-07:00",
                    "endOfServiceDateTime": "2024-10-08T00:00:00-07:00",
                    "servicingPeriods": [
                        {
                            "name": "Modern Lifecycle",
                            "startDateTime": "2022-09-20T00:00:00-07:00",
                            "endDateTime": "2024-10-08T00:00:00-07:00"
                        }
                    ]
                }
            ]
        },
        {
            "id": "2",
            "name": "Windows 11, version 21H2",
            "groupName": "Windows 11",
            "friendlyNames": [
                "Version 21H2 (OS build 22000)"
            ],
            "editions": [
                {
                    "id": "2_4",
                    "name": "Enterprise",
                    "releasedName": "Windows 11 Enterprise",
                    "deviceFamily": "Desktop",
                    "isInService": true,
                    "generalAvailabilityDateTime": "2021-10-04T00:00:00-07:00",
                    "endOfServiceDateTime": "2024-10-08T00:00:00-07:00",
                    "servicingPeriods": [
                        {
                            "name": "Modern Lifecycle",
                            "startDateTime": "2021-10-04T00:00:00-07:00",
                            "endDateTime": "2024-10-08T00:00:00-07:00"
                        }
                    ]
                }
            ]
        }
    ]
}

```
## Product known Issues Scenarios
Refer to the following resource pages for more information:

|Resource|Type|Description|
|:---|:---|:---|
|product|[microsoft.graph.windowsUpdates.product](.../resources/windowsupdates-product.md)|Represents a Windows product.|
|knownIssues|[microsoft.graph.windowsUpdates.knownIssue](.../resources/windowsupdates-knownIssue.md)| Represents a known issue related to a Windows product. |

### Scenario 1: Get all known issues for a particular product

This example will retrieve a list of all known issues associated with a particular product

#### Example API Request and Response

##### REST API request
```http
GET /admin/windows/updates/products/{id}/knownissues
GET /admin/windows/updates/products({id})/knownissues
```
##### REST API response
```HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.windowsUpdates.knownIssue)",
    "value": [
        {
            "id": "WI670072",
            "status": "mitigatedExternal",
            "webViewUrl": "https://admin.microsoft.com/Adminportal/Home#/windowsreleasehealth/knownissues/:/issue/WI670072",
            "description": "Investigation concluded that the error reported by users was not caused by the August 2023 preview updates.",
            "startDateTime": "2023-08-22T10:00:00-07:00",
            "title": "Microsoft received reports about an “UNSUPPORTED_PROCESSOR” error",
            "resolvedDateTime": "2023-09-07T16:14:07.1881817-07:00",
            "lastUpdatedDateTime": "2023-09-07T16:41:58.577-07:00",
            "originatingKnowledgeBaseArticle": {
                "Url": "https://support.microsoft.com/help/5029351",
                "Id": "KB5029351"
            },
            "resolvingKnowledgeBaseArticle": null,
            "safeguardHoldIds": [],
            "knownIssueHistories": [
                {
                    "createdDateTime": "2023-08-24T02:51:27.29Z",
                    "body": {
                        "content": "Microsoft has received reports of an issue in which users are receiving an “UNSUPPORTED_PROCESSOR” error message on a blue screen after installing updates released on August 22, 2023 (KB5029351 (https://support.microsoft.com/help/5029351)) and then restarting their device. KB5029351 (https://support.microsoft.com/help/5029351) might automatically uninstall to allow Windows to start up as expected. KB5029351 (https://support.microsoft.com/help/5029351) might not offer to some Windows devices which might be affected by this issue.\n\nIf you are experiencing issues, please use Feedback Hub to file a report following the below steps:\n    1. Launch Feedback Hub by opening the Start menu and typing \"Feedback hub\", or pressing the Windows key + F\n    2. Fill in the \"Summarize your feedback\" and \"Explain in more detail\" boxes, then click Next.\n    3. Under the \"Choose a category\" section, click the \"Problem\" button, and select \"Install and Update\" category. Then select \"Downloading, installing, and configuring Windows Update” subcategory. Click Next.\n    4. Under the \"Find similar feedback\" section, select the \"Make new bug\" radio button and click Next.\n    5. Under the \"Add more details\" section, supply any relevant detail (Note this is not critical to addressing your issue).\n    6. Expand the \"Recreate my problem\" box and press \"Start recording\". Reproduce the issue on your device.\n    7. Press \"Stop recording\" once finished. Click the \"Submit\" button.\nFor additional information, see Send feedback to Microsoft with the Feedback Hub app (https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332).\n\nNext steps: We are presently investigating to determine if this is an issue caused by Microsoft. We will provide an update when more information is available.\n\nAffected platforms:\n    -  Client: Windows 11, version 22H2; Windows 10, version 22H2; Windows 11, version 21H2\n    -  Server: None\n",
                        "contentType": "html"
                    }
                }...
            ]
        },        
        {
            "id": "WI519857",
            "status": "confirmed",
            "webViewUrl": "https://admin.microsoft.com/Adminportal/Home#/windowsreleasehealth/knownissues/:/issue/WI519857",
            "description": "This can affect applications which retrieve the device's currency for purchases or other transactions.",
            "startDateTime": "2023-02-22T13:32:41.143-08:00",
            "title": "Devices with locale set to Croatia might not utilize the expected currency",
            "resolvedDateTime": null,
            "lastUpdatedDateTime": "2023-02-23T13:32:42.76-08:00",
            "originatingKnowledgeBaseArticle": null,
            "resolvingKnowledgeBaseArticle": null,
            "safeguardHoldIds": [],
            "knownIssueHistories": [
                {
                    "createdDateTime": "2023-02-23T21:32:42.76Z",
                    "body": {
                        "content": "The correct default currency might not display or be used in Windows devices which have locale set to Croatia. This can affect applications which retrieve the device's currency for purchases or other transactions. \nEarlier this year, Croatia joined the Eurozone, changing its currency from the Kuna to Euro. Windows Locale data for Croatia will be updated for this change in the short term.\n\nWorkaround: Changing the currency in Windows can help. This can be accomplished via the Windows Control Panel.\n    1. Open the \"Windows Region\" settings. This can be done in one of the following ways:\n        a. Open \"Control Panel\" from the start menu and select \"Change date, time, or number formats\" under \"Clock and Region\"\n        b. On your keyboard, press and hold the Windows key, then press the letter R. This will open the \"Run\" window. Type INTL.CPL into the Open field,\n    2. In the Region settings, choose one of the 2 locales for Croatia:\n        c. Croatian (Bosnia & Herzegovina)\n        d. Croatian (Croatia)\n    3. In this same window, click the \"Additional settings\" button. Once there, click the \"Currency\" tab.\n    4. Change the currency symbol from \"KN\" to Euro, \"€\"\n\nAdditional information can be seen here: Currency formatting - Globalization | Microsoft Learn (https://learn.microsoft.com/globalization/locale/currency-formatting).\n\nManually changing currency might also be an option in some applications. Although this won't change the device’s default currency, this could allow usage of the application with the desired currency preference. Some applications might not allow this manual change. Please view the settings and documentation for your applications.\n\nNext steps: We are working on a resolution and will provide an update in an upcoming release.\n\nAffected platforms:\n    -  Client: Windows 11, version 22H2; Windows 10, version 22H2; Windows 11, version 21H2; Windows 10, version 21H2; Windows 10, version 20H2; Windows 10, version 1809; Windows 10 Enterprise LTSC 2019; Windows 10 Enterprise LTSC 2016; Windows 10, version 1607; Windows 10 Enterprise 2015 LTSB\n    -  Server: Windows Server 2022; Windows Server, version 20H2; Windows Server, version 1809; Windows Server 2019; Windows Server 2012 R2; Windows Server 2012; Windows Server 2008 R2 SP1; Windows Server 2008 SP2\n",
                        "contentType": "html"
                    }
                }
            ]
        }...
    ]
}
```
### Scenario 2:  Find Known Issues for a parctular product based on a set time period 
The following example showcases how to retrieve all of the recent known issues based on a set time frame (i.e. last 30 days, last 3 months, last year, etc.)

#### Example 1: Retrieve the known issues for a particular product and filter them by date range on any of the date fields.

##### REST API request
```http
GET /admin/windows/updates/products/{id}/knownissues?$filter=lastUpdatedDateTime ge {startDate} and lastUpdatedDateTime le {endDate}
GET /admin/windows/updates/products({id})/knownissues$filter=lastUpdatedDateTime ge {startDate} and lastUpdatedDateTime le {endDate}
```

```http
GET /admin/windows/updates/products('1')/knownIssues?$filter=lastUpdatedDateTime ge 2023-02-01T16:41:58.577-07:00 and lastUpdatedDateTime le 2023-02-28T16:41:58.577-07:00
``` 
##### REST API response
```
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.windowsUpdates.knownIssue)",
    "value": [
        {
            "id": "WI519857",
            "status": "confirmed",
            "webViewUrl": "https://admin.microsoft.com/Adminportal/Home#/windowsreleasehealth/knownissues/:/issue/WI519857",
            "description": "This can affect applications which retrieve the device's currency for purchases or other transactions.",
            "startDateTime": "2023-02-22T13:32:41.143-08:00",
            "title": "Devices with locale set to Croatia might not utilize the expected currency",
            "resolvedDateTime": null,
            "lastUpdatedDateTime": "2023-02-23T13:32:42.76-08:00",
            "originatingKnowledgeBaseArticle": null,
            "resolvingKnowledgeBaseArticle": null,
            "safeguardHoldIds": [],
            "knownIssueHistories": [
                {
                    "createdDateTime": "2023-02-23T21:32:42.76Z",
                    "body": {
                        "content": "The correct default currency might not display or be used in Windows devices which have locale set to Croatia. This can affect applications which retrieve the device's currency for purchases or other transactions. \nEarlier this year, Croatia joined the Eurozone, changing its currency from the Kuna to Euro. Windows Locale data for Croatia will be updated for this change in the short term.\n\nWorkaround: Changing the currency in Windows can help. This can be accomplished via the Windows Control Panel.\n    1. Open the \"Windows Region\" settings. This can be done in one of the following ways:\n        a. Open \"Control Panel\" from the start menu and select \"Change date, time, or number formats\" under \"Clock and Region\"\n        b. On your keyboard, press and hold the Windows key, then press the letter R. This will open the \"Run\" window. Type INTL.CPL into the Open field,\n    2. In the Region settings, choose one of the 2 locales for Croatia:\n        c. Croatian (Bosnia & Herzegovina)\n        d. Croatian (Croatia)\n    3. In this same window, click the \"Additional settings\" button. Once there, click the \"Currency\" tab.\n    4. Change the currency symbol from \"KN\" to Euro, \"€\"\n\nAdditional information can be seen here: Currency formatting - Globalization | Microsoft Learn (https://learn.microsoft.com/globalization/locale/currency-formatting).\n\nManually changing currency might also be an option in some applications. Although this won't change the device’s default currency, this could allow usage of the application with the desired currency preference. Some applications might not allow this manual change. Please view the settings and documentation for your applications.\n\nNext steps: We are working on a resolution and will provide an update in an upcoming release.\n\nAffected platforms:\n    -  Client: Windows 11, version 22H2; Windows 10, version 22H2; Windows 11, version 21H2; Windows 10, version 21H2; Windows 10, version 20H2; Windows 10, version 1809; Windows 10 Enterprise LTSC 2019; Windows 10 Enterprise LTSC 2016; Windows 10, version 1607; Windows 10 Enterprise 2015 LTSB\n    -  Server: Windows Server 2022; Windows Server, version 20H2; Windows Server, version 1809; Windows Server 2019; Windows Server 2012 R2; Windows Server 2012; Windows Server 2008 R2 SP1; Windows Server 2008 SP2\n",
                        "contentType": "html"
                    }
                }
            ]
        }
    ]
}

```

#### Example 2: List the known issues related to a particular product based on timeframe in the past.

This function (GetKnownIssuesByTimeRange) will query the known issues for a particular product based on a time frame in the past (days). The function will return all known issues resoved in the time frame defined by the parameter 'daysInPast'. The parameter
'includeAllActive' can be null, true or false. If it is null or true, all active known issues (no time filter applied) for the desired product will be included in the response, whereas if it is false then active known issues would not be included. 

##### REST API request
```http
GET /admin/windows/updates/products({id})/Default.GetKnownIssuesByTimeRange(daysInPast={daysInPast},includeAllActive={includeAllActive})
GET /admin/windows/updates/products({id})/GetKnownIssuesByTimeRange(daysInPast={daysInPast},includeAllActive={includeAllActive})
GET /admin/windows/updates/products/{id}/Default.GetKnownIssuesByTimeRange(daysInPast={daysInPast},includeAllActive={includeAllActive})
GET /admin/windows/updates/products/{id}/GetKnownIssuesByTimeRange(daysInPast={daysInPast},includeAllActive={includeAllActive})
```
Example
```http
GET /admin/windows/updates/products('1')/GetKnownIssuesByTimeRange(daysInPast=70,includeAllActive=false)
```

##### REST API response
```
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.windowsUpdates.knownIssue)",
    "value": [
        {
            "id": "WI670072",
            "status": "mitigatedExternal",
            "webViewUrl": "https://admin.microsoft.com/Adminportal/Home#/windowsreleasehealth/knownissues/:/issue/WI670072",
            "description": "Investigation concluded that the error reported by users was not caused by the August 2023 preview updates.",
            "startDateTime": "2023-08-22T10:00:00-07:00",
            "title": "Microsoft received reports about an “UNSUPPORTED_PROCESSOR” error",
            "resolvedDateTime": "2023-09-07T16:14:07.1881817-07:00",
            "lastUpdatedDateTime": "2023-09-07T16:41:58.577-07:00",
            "originatingKnowledgeBaseArticle": {
                "Url": "https://support.microsoft.com/help/5029351",
                "Id": "KB5029351"
            },
            "resolvingKnowledgeBaseArticle": null,
            "safeguardHoldIds": [],
            "knownIssueHistories": [
                {
                    "createdDateTime": "2023-08-24T02:51:27.29Z",
                    "body": {
                        "content": "Microsoft has received reports of an issue in which users are receiving an “UNSUPPORTED_PROCESSOR” error message on a blue screen after installing updates released on August 22, 2023 (KB5029351 (https://support.microsoft.com/help/5029351)) and then restarting their device. KB5029351 (https://support.microsoft.com/help/5029351) might automatically uninstall to allow Windows to start up as expected. KB5029351 (https://support.microsoft.com/help/5029351) might not offer to some Windows devices which might be affected by this issue.\n\nIf you are experiencing issues, please use Feedback Hub to file a report following the below steps:\n    1. Launch Feedback Hub by opening the Start menu and typing \"Feedback hub\", or pressing the Windows key + F\n    2. Fill in the \"Summarize your feedback\" and \"Explain in more detail\" boxes, then click Next.\n    3. Under the \"Choose a category\" section, click the \"Problem\" button, and select \"Install and Update\" category. Then select \"Downloading, installing, and configuring Windows Update” subcategory. Click Next.\n    4. Under the \"Find similar feedback\" section, select the \"Make new bug\" radio button and click Next.\n    5. Under the \"Add more details\" section, supply any relevant detail (Note this is not critical to addressing your issue).\n    6. Expand the \"Recreate my problem\" box and press \"Start recording\". Reproduce the issue on your device.\n    7. Press \"Stop recording\" once finished. Click the \"Submit\" button.\nFor additional information, see Send feedback to Microsoft with the Feedback Hub app (https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332).\n\nNext steps: We are presently investigating to determine if this is an issue caused by Microsoft. We will provide an update when more information is available.\n\nAffected platforms:\n    -  Client: Windows 11, version 22H2; Windows 10, version 22H2; Windows 11, version 21H2\n    -  Server: None\n",
                        "contentType": "html"
                    }
                }...
            ]
        }...
    ]
}
```
