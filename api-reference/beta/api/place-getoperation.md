---
title: "place: getOperation"
description: "Get a placeOperation by ID"
author: "Dongjing-MSIT"
ms.date: 11/10/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# place: getOperation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [placeOperation](../resources/placeoperation.md) by ID.

## Data Retention

- Operation results are retained for 15 days from creation.

## API Level Throttling

- This API has a throttling limit of three calls per second. 
- The progress of long-running operations is updated as every 30 seconds; therefore, there's no need to get an operation more frequently than once per 30 seconds.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-getoperation-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-getoperation-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/getOperation(id='{id}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|id|String|The ID of the place operation. Required.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [placeOperation](../resources/placeoperation.md) object in the response body.

### Operation details structure

The operation details in response mirror the hierarchical structure of the request payload:

- Each top-level place in the request appears as a top-level entry in the `details` array
- The hierarchy specified using `children@delta` in the request is preserved in the `children` array of the response
- Successfully created or updated places are returned in the `succeededPlace` property
- Any errors encountered during processing are returned in the `error` property

## Examples

### Example 1: Get a succeeded operation

This example demonstrates the operation response for the bulk upsert request shown in [Example of the bulk upsert API](place-patch-places.md#example-mixed-create-and-update-operations). The response structure mirrors the request hierarchy, with each top-level place from the request appearing in the `details` array and child places nested in the `children` arrays.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "placethis.getoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/getOperation(id='0f5d3cc5-d1bd-4cba-9b0e-e9ad68527ab5')
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.placeOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
	"@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.placeOperation",
	"id": "0f5d3cc5-d1bd-4cba-9b0e-e9ad68527ab5",
	"status": "succeeded",
	"progress": {
		"totalPlaceCount": 9,
		"succeededPlaceCount": 9,
		"failedPlaceCount": 0
	},
	"details": [
		{
			"children": [
				{
					"succeededPlace": {
						"@odata.type": "#microsoft.graph.floor",
						"id": "5f54d496-7328-415a-930e-990be3a98766",
						"displayName": "Demo Floor 1",
						"parentId": "25e5905a-7fee-4f36-ba31-29e85c14bf18"
					}
				}
			],
			"succeededPlace": {
				"@odata.type": "#microsoft.graph.building",
				"id": "25e5905a-7fee-4f36-ba31-29e85c14bf18",
				"displayName": "Demo Building A",
				"hasWiFi": true,
				"wifiState": "enabled"
			}
		},
		{
			"children": [
				{
					"children": [
						{
							"children": [
								{
									"succeededPlace": {
										"@odata.type": "#microsoft.graph.desk",
										"id": "211ffb37-e880-475a-b73a-43f484609536",
										"displayName": "desk1",
										"parentId": "f5b54c22-5474-47aa-878a-0bfdc72e30f1",
										"mode": {
											"@odata.type": "#microsoft.graph.unavailablePlaceMode",
											"reason": "New"
										}
									}
								},
								{
									"succeededPlace": {
										"@odata.type": "#microsoft.graph.room",
										"id": "ddb3bfc7-c7af-40fb-a8be-26af40ee6cf3",
										"placeId": "9112a87a-7994-4f73-9037-0939ef1c7d55",
										"displayName": "Demo Room 1",
										"parentId": "f5b54c22-5474-47aa-878a-0bfdc72e30f1",
										"emailAddress": "DemoRoom19975d7971764579926925@a830edad9050849gxpstcaadhoc.onmicrosoft.com"
									}
								}
							],
							"succeededPlace": {
								"@odata.type": "#microsoft.graph.section",
								"id": "f5b54c22-5474-47aa-878a-0bfdc72e30f1",
								"displayName": "Demo Section A",
								"parentId": "23bfdc52-59d6-419d-ab18-54a51fe060f6"
							}
						}
					],
					"succeededPlace": {
						"@odata.type": "#microsoft.graph.floor",
						"id": "23bfdc52-59d6-419d-ab18-54a51fe060f6",
						"displayName": "Demo Floor 1",
						"parentId": "15369a66-e9f4-4803-8e7e-fa6b811fbd92"
					}
				}
			],
			"succeededPlace": {
				"@odata.type": "#microsoft.graph.building",
				"id": "15369a66-e9f4-4803-8e7e-fa6b811fbd92",
				"displayName": "Demo Building B"
			}
		},
		{
			"succeededPlace": {
				"@odata.type": "#microsoft.graph.workspace",
				"id": "8628af02-04c3-4882-88cc-06108de2d637",
				"placeId": "ebbc6ed0-8fda-41d2-9d07-c0f990337515",
				"displayName": "Demo Workspace 1",
				"parentId": "2cb2701d-0896-4c69-91bb-582d82d7c68c",
				"emailAddress": "DemoWorkspace1bb13cf171764579932835@a830edad9050849gxpstcaadhoc.onmicrosoft.com",
				"mode": {
					"@odata.type": "#microsoft.graph.reservablePlaceMode"
				}
			}
		},
		{
			"succeededPlace": {
				"@odata.type": "#microsoft.graph.section",
				"id": "2cb2701d-0896-4c69-91bb-582d82d7c68c",
				"displayName": "s1",
				"parentId": "94eb964a-b166-4f0a-953d-54dc9032d9d5",
				"tags": [
					"Working Section",
					"CVP"
				]
			}
		}
	]
}
```

### Example 2: Get a partially succeeded operation with errors

#### Request

The following example shows an operation that partially succeeded.

<!-- {
  "blockType": "request",
  "name": "placethis.getoperation_partiallysucceeded"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/getOperation(id='116d12e4-3361-43f9-b722-af5b510760c9')
```

#### Response

The following example shows the response with `partiallySucceeded`. The operation partially succeeded with one place created and two places failed. One child of "Demo Building 3" failed to be created because a place with the same name, type, parentId, and address already exists. Additionally, one top-level place failed for another reason.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.placeOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
	"@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.placeOperation",
	"id": "15cc23bd-f215-42bf-92ad-bb84fbcd6606",
	"status": "partiallySucceeded",
	"progress": {
		"totalPlaceCount": 3,
		"succeededPlaceCount": 1,
		"failedPlaceCount": 2
	},
	"details": [
		{
			"error": null,
			"children": [
				{
					"error": {
						"code": "BadRequest",
						"message": "A Place with the same name, type, parentId and address already exists with ID 94eb964a-b166-4f0a-953d-54dc9032d9d5."
					},
					"children": [],
					"succeededPlace": null
				}
			],
			"succeededPlace": {
				"@odata.type": "#microsoft.graph.building",
				"id": "25e5905a-7fee-4f36-ba31-29e85c14bf18",
				"displayName": "Demo Building 3"
			}
		},
		{
			"error": {
				"code": "BadRequest",
				"message": "Mailbox parameter is not supported for room or workspace creation."
			}
		}
	]
}
```
