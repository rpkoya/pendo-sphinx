Known Issues
============

| **Date/Time fields**
|   Date or Date/Time fields have two distinct behaviors, depending on the screen you are on. This is expected behavior.

  - In the *Document Class Mapping* preview or the *Preview* screens, the date or date/time will be formatted as specified, but will be sorted as string. Remember, this is a preview screen, the data has not yet been transformed and moved to the Target Data Set.

  - After an *Attach*, if the date mapping is correctly formulated and has been saved to a proper date formatted *Column*, whenever you search a *Target Data Set*, the date or date/time data type is respected and true date/time sorting is supported.

  - The “Date Changed” column information is formatted differently in the *Data Set and Document Classes* main grids.

| **Files and Folders**

 - csv files are not yet supported in ‘Files and Folders’. Please continue to upload them via the *Upload* component and then *Create* and *Import* a *Remote Source*. - *Files or Folders* that have commas in their name are not supported.

|  **Data Sets**
|   **Column** name restrictions:

  - When creating a *Target Data Set*, the *Platform* allows both the *Column Name* and *APIName* to start with a number (e.g. 1MDrop) or be called 'source' or 'Source'.

  - HOWEVER, when mapping, if the *APIName* starts with a number, you will not be able to preview or attach. You do not get an error anywhere. Workaround: rename the *APIName* so that it does not start with a number.

  - When *Mapping*, if the *APIName* is 'source' or 'Source', you can preview the mapping, but you will get a error and failure during an *Attach*. Workaround: rename the *APIName* so that is in not 'Source' or 'source'.

  - The *Column Name* cannot start with a number or be called 'Source' or 'source'.

  - *Export* a *Data Set* with a path that has a '.'

  - If, in *Exports*, you select a folder name that has a \\ in it, it works the first time. However, if you export to the same folder name second time, the screen hangs.

**Document Classes**
~~~~~~~~~~~~~~~~~~~~

  - Naming restrictions.
  - Do not create a *Document Set* or *Document Class* name with a ‘/’ in it. If you do, when you download the *Documentation*, it will download as a .json file instead of a pdf. Workaround: If this happens and you get a .json file, just Save the file and then change the extension to .pdf and the file will open normally.
  - Sort *Document Class*
  - In Document Class -> Main menu -> item 'Attach History', you will get an error when trying to sort by version number.

**Mapping Related Items**
-------------------------

  - An exclamation mark at the start of a lookup value is not supported.

  - *Text Expression* mappings that have the unwrapDocument context command will not currently highlight a mapping path. The values returned are correct.

  - In *Mappings*, on the *Marker* tab, if you click to add a ‘Regular Expression’ *Marker*, you get an error before you even have a chance to enter in the target value. You can close the error and proceed.

|
|   **Loop mappings:**
|

  - Currently, there is not a way to move a mapping that is outside the loop into the loop.
  - Currently, there is not a way to reorder child mappings with the parent loop.
  - There are now several screens that show you line numbers for Word and Text documents. One of the options is a ‘Go To’ line number. The box where you enter the line number only shows the last three numbers. Although the function works correctly, if you enter 6000 or 19000, the only thing you see is 000.
  - When you select *Attach (All)* all and *Select (All)*, if you miss a *Force* checkbox amongst many, you get the correct error and can see it in the UI. However, once you correct the error (checking Force) and click Attach, you can get an error that a job is already pending. You may only see one or two of the jobs are pending, not the rest. The user must close the screen and, by looking at the grid, see what still needs to be *Re Indexed* or *Attached*.
  - The field *User* in both *Attach History* and *Mapping History* is not currently sortable or filterable.

**Search**
----------

 - In any Search Grid, Double-byte characters are not displaying correctly, thus multilingual abilities are not available. This affects special accents used in many languages and the double-byte characters like Chinese, Arabic, Japanese.

Admin
-----

- Export / Import Workspace
    - Labels and Models are not currently exported or imported.
- Text Files
    - When you import a text file, several blank lines are added to the top of the file in the metadata. This can be seen in any preview window. There is no practical issue with this, it is just a noted anomaly.
- Importing a Workspace
    - Currently there is no user feedback in the UI while Importing a Workspace. While it may seem as if the system is frozen, file instances are being made. This can take quite a while, depending on the number of Files in ‘Files and Folders’ and ‘Uploads’ that were in the source Workspace.

**Manage Users**
----------------

    - Help text is not functioning in the Location tab. No impact as the fields are actually all self-explanatory.

**Manage Organizations**
-------------------------

    - The field ‘Division’ is only on the Edit tab, not the create tab. It should be in both.

**IE 11**
---------

 If you find other IE 11 issues, please be sure to report them on Zendesk.

  - After a search on a single Data Set, you see the buttons 'First' and 'Next' and so on seem disabled, but if you click any of the buttons, you will get sent to the login screen.

  - Also, when a button should not be enabled but is (e.g. you are on the last page but you click Next which should be disabled or if you are on the first page and you click First), you are brought to the Home Page of the Platform.

  - Similarly, in Document Class -> Edit -> Document Sets, when a button should not be enabled but is (e.g. you are on the last page but you click Next which should be disabled or if you are on the first page and you click First), you are brought to the Home Page of the Platform.

  - In the mapping detail section, specifically the Cleaner drop down, if you click in the area indicated in light orange, the drop down appears, but if you try to make a selection, the selection disappears. You must click the arrow (pinkish area) and then make a selection.
