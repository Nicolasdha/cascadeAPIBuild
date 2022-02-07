# Cascade Style Guide:

## Basic Formatting principles

* Use bold for UI elements, like button labels and tab names. This lets users visually find an "anchor"
* Use monospace for input that changes, like URLs, options, or text searches. This indicates special entry
* Use numbered lists for all procedures, helps users identify sequences.
* Put result first,
   * "Press **Yes** to enable SSO" → To enable SSO, press **Here**
   * This helps users scan for what they need to do
* Put place where user needs to go first
   * Press **Yes** at the top of the page → At the top of the page, press **Yes**.
   * This lets users read and find in the same order
* Section content, use short paragraphs and blank space liberally. This helps users read and scan. And it reduces perceived "wall of texts."

## How-to Template

```
# Title
 Lead

<how this task improves user's life>
----
{{ .toc }}
----
## Before you start

Before you {{ .title }}, there are a few things you need:

☑
☑

----
## How to {{.title}}

### Step 1

### Step 2

### Step n, reversing actions in steps 1 to n-1
----
{{ How-to footer }}



```


#### How-to footer

```
## Summing up

This page goes over how to {{ .feature }}. You should be able to use {{ .feature }}
to {{ .achievement }}.

### Still need help?

Get in touch! Send us an email at support@cascade.app"

```


## Cascade Terminology

###### Add-in </br>
  What Microsoft calls integrations in their office products. Use this term when
  the integration happens in a MS 

###### Instance </br>
  The Cascade workspace
  
###### Integrate / Integration </br>
 -  to establish a connection between Cascade and a third-party application.
 - Related terms:
   - to link / to connect : basically synonomous with integrate
   - to sync : the action when data is updated from one App to another 
   
###### Metric </br>
- A value from Google Analytics
     
###### Pane </br>
- A smaller embedded window in the application. EG the Goals pane in the outlook add-in
 
###### Progress score </br>
- A goal's progress value

###### Report value
- A Salesforce report value

###### Summary digest </br>
 - A periodic report about goal progress. Admins configure the digests' recipients, mentioned goals, and frequency. After that, Cascade automatically sends an email at a scheduled time.
