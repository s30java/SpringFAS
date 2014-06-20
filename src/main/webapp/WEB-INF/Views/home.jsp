<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="<c:url value="/assets/bootstrap/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/assets/css/StyleSheet.css" />" rel="stylesheet">
 <link rel="shortcut icon" href="<c:url value="/assets/ico/favicon.ico" />">
<title> :::: Feedback Analysis System ::::</title>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h2>Hi ${userSession.firstname}</h2>
<p>The sidebar is displayed on the left edge of the page below the site logo (if using the MonoBook skin or the default Vector skin since MediaWiki 1.16). This sidebar gives you access to important pages in the wiki such as Recent Changes or Upload File.
Navigation

Clicking on the logo brings you back to the main page of the wiki. The links in the navigation section just below will take you to important pages of the wiki. These links can be configured by site administrators.

Toolbox

The tools contains a selection of links which change depending on what type of page you are viewing.

On all pages (except special pages)

        “What links here” takes you to a special page that lists the pages on this wiki which contain a link to the current page. This is helpful when you are looking for pages of related information. The “what links here” information can also be useful when you are refactoring wiki pages and need to check whether links to this page are still relevant after changes in the current page.
        The “related changes” tool lists all recent changes in the pages linked to from the current page. Recent changes to all relevant template pages are included in the resulting page list. The "Hide minor edits" option that can be set in the user preferences applies, among other things, to “related changes”.

On all pages (including special pages)

        “Upload file” displays a special page that allows logged-in users to upload images and other files to the wiki. Uploaded files can be linked from or embedded in wiki pages. Uploading files, viewing files on the server, including them in wiki pages and managing the uploaded files is discussed in the managing files section of this manual. This is not displayed if file uploading is not enabled.
        The “special pages” tool lists the MediaWiki special pages. In MediaWiki terminology, a special page is one that presents information about the Wiki and/or allows access to administration activities for the wiki. For example, a list of users registered with the wiki, statistics about the wiki such as the number of pages and number of page edits, system logs, a list of orphaned pages, and so on. These special pages are commonly generated when the special page is loaded rather than being stored in the wiki database.
        The function and use of the default special pages can be found in the special pages section of this manual.

Page Tabs
Default page tabs at the top of the page

The page tabs are displayed at the top of the page to the right of the site logo (if using the MonoBook skin or the default Vector skin since MediaWiki 1.16). These tabs allow you to perform actions or view pages that are related to the current page. The available default actions include: viewing, editing, and discussing the current page. The specific tabs displayed on your pages depend on whether or not you are logged into the wiki and whether you have sysop (administrator) privileges on the wiki. On special pages only the namespace tab is displayed.

Default for all users

        “namespace” (page, help, special page, template, user page etc.)
        “discussion”
        “edit” (may read “view source” if anonymous editing is disabled, the page is in the MediaWiki: namespace, or the page is protected)
        “history”

Extra tabs for logged-in users

        “move”
        “watch”

Extra tabs for sysops

        “protect”
        “delete”

Administrators can add or remove tabs by using JavaScript or installing extensions, so the tabs you see may be different depending on which wiki you are using.
User Links
Default user links at the top right of the page

The user links are displayed at the top far right of the page (if using the default Vector skin). These tabs allow the logged-in user to view and edit their user page and wiki preferences. Additionally, the user links allow the user to quickly access their contributions to the wiki and logout.

For anonymous users the user links is replaced by a link to the wiki login page or, if enabled, a link to your IP address and your IP address's talk page.

“<username>”
    This links to your user page which is where you can put information about yourself, store bits of information you want to remember or whatever else you fancy.
“talk”
    This links to your discussion page, where people can leave messages for you.
“preferences”
    Allows you to change your personal site preferences.
“watchlist”
    A list of all pages that you are watching. Pages can be added to this list by clicking “watch” at the top of the page.
“contributions”
    A list of all contributions you have made to the wiki.
“log out”
    Click this link to log out of the wiki. 
    
    
    The sidebar is displayed on the left edge of the page below the site logo (if using the MonoBook skin or the default Vector skin since MediaWiki 1.16). This sidebar gives you access to important pages in the wiki such as Recent Changes or Upload File.
Navigation

Clicking on the logo brings you back to the main page of the wiki. The links in the navigation section just below will take you to important pages of the wiki. These links can be configured by site administrators.

Toolbox

The tools contains a selection of links which change depending on what type of page you are viewing.

On all pages (except special pages)

        “What links here” takes you to a special page that lists the pages on this wiki which contain a link to the current page. This is helpful when you are looking for pages of related information. The “what links here” information can also be useful when you are refactoring wiki pages and need to check whether links to this page are still relevant after changes in the current page.
        The “related changes” tool lists all recent changes in the pages linked to from the current page. Recent changes to all relevant template pages are included in the resulting page list. The "Hide minor edits" option that can be set in the user preferences applies, among other things, to “related changes”.

On all pages (including special pages)

        “Upload file” displays a special page that allows logged-in users to upload images and other files to the wiki. Uploaded files can be linked from or embedded in wiki pages. Uploading files, viewing files on the server, including them in wiki pages and managing the uploaded files is discussed in the managing files section of this manual. This is not displayed if file uploading is not enabled.
        The “special pages” tool lists the MediaWiki special pages. In MediaWiki terminology, a special page is one that presents information about the Wiki and/or allows access to administration activities for the wiki. For example, a list of users registered with the wiki, statistics about the wiki such as the number of pages and number of page edits, system logs, a list of orphaned pages, and so on. These special pages are commonly generated when the special page is loaded rather than being stored in the wiki database.
        The function and use of the default special pages can be found in the special pages section of this manual.

Page Tabs
Default page tabs at the top of the page

The page tabs are displayed at the top of the page to the right of the site logo (if using the MonoBook skin or the default Vector skin since MediaWiki 1.16). These tabs allow you to perform actions or view pages that are related to the current page. The available default actions include: viewing, editing, and discussing the current page. The specific tabs displayed on your pages depend on whether or not you are logged into the wiki and whether you have sysop (administrator) privileges on the wiki. On special pages only the namespace tab is displayed.

Default for all users

        “namespace” (page, help, special page, template, user page etc.)
        “discussion”
        “edit” (may read “view source” if anonymous editing is disabled, the page is in the MediaWiki: namespace, or the page is protected)
        “history”

Extra tabs for logged-in users

        “move”
        “watch”

Extra tabs for sysops

        “protect”
        “delete”

Administrators can add or remove tabs by using JavaScript or installing extensions, so the tabs you see may be different depending on which wiki you are using.
User Links
Default user links at the top right of the page

The user links are displayed at the top far right of the page (if using the default Vector skin). These tabs allow the logged-in user to view and edit their user page and wiki preferences. Additionally, the user links allow the user to quickly access their contributions to the wiki and logout.

For anonymous users the user links is replaced by a link to the wiki login page or, if enabled, a link to your IP address and your IP address's talk page.

“<username>”
    This links to your user page which is where you can put information about yourself, store bits of information you want to remember or whatever else you fancy.
“talk”
    This links to your discussion page, where people can leave messages for you.
“preferences”
    Allows you to change your personal site preferences.
“watchlist”
    A list of all pages that you are watching. Pages can be added to this list by clicking “watch” at the top of the page.
“contributions”
    A list of all contributions you have made to the wiki.
“log out”
    Click this link to log out of the wiki. </p>
</body>
</html>