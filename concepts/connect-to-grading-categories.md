---
title: "Create and update grading categories"
description: "Teachers can use grading categories to weight assignments in the class grade."
ms.localizationpriority: medium
author: "v-rmanda"
ms.prod: "education"
doc_type: conceptualPageType
---

# Grading Categories
This article provides guidance on setting up and using the grading categories for a class.

Teachers can use grading categories to weight assignments in the class grade. For example, a class could have 60% of its grade come from homework assignments and 40% from test assignments.

Grading categories are defined on the class's settings. Every assignment that contributes to the final average grade needs to have a grading category.

> [!NOTE]
> You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the APIs mentioned in this article.

## Get a class

A class is a group of students and teachers who share assignments and feedback. You get the list of classes from your education tenant. Then, you can locate the class where you want to set grading categories on assignments.

- [List Classes](/graph/api/educationclass-list): List the classes, so that you can find the one you want and copy the class's ID.

```http
GET https://graph.microsoft.com/beta/education/classes
```

## Get assignment settings

To create and manage assignments, you need to set up grading categories. You can get all the assignment settings in a class. Then, you can inspect them to see which ones need grading categories.

- [Get assignment settings](/graph/api/educationassignmentsettings-get): Gets the assignment settings for a class.

```http
GET https://graph.microsoft.com/beta/education/classes/{id}/assignmentSettings
```

## Create grading categories

Grading categories are used to weight assignments in the final class grade. This section shows how to create grading categories for your class.

### Request

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

{
  "gradingCategories": [
        {
            "displayName": "Lab",
            "percentageWeight": 10
        },
        {
            "displayName": "Homework",
            "percentageWeight": 80
        },
        {
            "displayName": "Test",
            "percentageWeight": 10
        }
    ]
}
```

### Response

The following example shows the response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
  "submissionAnimationDisabled": false,
  "gradingCategories@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
  "gradingCategories": [
      {
          "id": "8bfb6d7f-8634-4f3b-9b6a-b6b6ff663f01",
          "displayName": "Lab",
          "percentageWeight": 10
      },
      {
          "id": "6fd19981-588f-495c-91a8-712a645c95b7",
          "displayName": "Homework",
          "percentageWeight": 80
      },
      {
          "id": "54f637a5-2cef-4e48-a88e-028854ca8089",
          "displayName": "Test",
          "percentageWeight": 10
      }
  ]
}
```

## Add a grading category to an assignment

An assignment can be weighted by assigning it a grading category. Assigning a grading category to an assignment will determine how much it contributes to the final class grade. You can use the following API to add a grading category to an assignment.

- [Add gradingCategory](/graph/api/educationassignment-post-gradingcategory): Allows you to give an assignment a grading category, causing it to contribute to the class average grade as part of that grading category.

```http
PUT /education/classes/{classId}/assignments/{assignmentId}/gradingCategory/$ref
```

### Request

The following example shows a request. 

```http
PUT https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/28992cce-fac0-4950-a836-5a524ded8599/gradingCategory/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/905b49a5-1639-49ab-9fbe-6a035def5ba3"
}
```

### Response

The following example shows the response.

```http
HTTP/1.1 204 No Content
```

## Update a grading category

You might want to change the details of a grading category, like its display name or weight or you might want to delete one grading category and replace the percentage points it took up with an existing or new grading category. This section shows you how to update one or more grading categories.

- [Update single gradingCategory](/graph/api/educationgradingcategory-update): This is used to update a single gradingCategory.

### Example 1: Update a single grading category

```http
PATCH /education/classes/{classId}/assignmentSettings/gradingCategories/{gradingCategoryId}
```

### Request

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/a5ca6dda-f220-43ca-81e4-02396b99f398
Content-type: application/json

Request Body
{
    "displayName": "Test updated"
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories/$entity",
    "id": "a5ca6dda-f220-43ca-81e4-02396b99f398",
    "displayName": "Test updated",
    "percentageWeight": 30
}
```
### Example 2: Use a delta payload to create, update and/or delete grading categories

```http
PATCH /education/classes/{classId}/assignmentSettings/
```

### Request

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

Request Body
{
    "gradingCategories@delta": [
        {
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Changing this grading category's name"
        },
        {
            "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#gradingCategories/$deletedEntity",
            "id": "e2a86277-24f9-4f29-8196-8c83fc69d00d",
            "reason": "Deleting this grading category"
        },
        {
            "displayName": "Adding a new grading category 01",
            "percentageWeight": 30
        },
        {
            "displayName": "Adding a new grading category 02",
            "percentageWeight": 10
        }
    ]
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
    "submissionAnimationDisabled": false,
    "gradingCategories@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [
        {
            "id": "fb4a4009-3cc4-4dea-9991-e0a0763659e3",
            "displayName": "Homework",
            "percentageWeight": 30
        },
        {
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Changing this grading category's name",
            "percentageWeight": 30
        },
        {
            "id": "d47d7a3f-44a1-47e1-8aec-68b028f64b2e",
            "displayName": "Adding a new grading category 01",
            "percentageWeight": 30
        },
        {
            "id": "021db844-0f03-4483-929d-1c1dbfd4fcb4",
            "displayName": "Adding a new grading category 02",
            "percentageWeight": 10
        }
    ]
}
```

## Delete grading categories

You can delete a grading category when you no longer need it for your assignment, or if you want to simplify your evaluation process. Deleting a grading category removes it from the assignment settings and the grading interface. This section shows deleting a grading category. 

- [Remove gradingCategory](/graph/api/educationassignment-delete-gradingcategory): Use this method to remove a grading category from the assignment settings and the grading interface.

```http
DELETE /education/classes/{classId}/assignments/{assignmentId}/gradingCategory/$ref
```

### Request

The following example shows a request. 

```http
DELETE https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/0bcb37af-3676-47ef-ae93-8de22ce5ff1d/gradingCategory/$ref
```

### Response

The following example shows the response.

```http
HTTP/1.1 204 No Content
```

## Permissions

The assignments API supports delegated (per user) only. 