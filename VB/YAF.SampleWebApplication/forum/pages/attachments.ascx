﻿<%@ Control Language="c#" AutoEventWireup="True" Inherits="YAF.Pages.attachments" Codebehind="attachments.ascx.cs" %>
<%@ Import Namespace="YAF.Types.Interfaces" %>
<%@ Import Namespace="YAF.Types.Extensions" %>
<%@ Import Namespace="YAF.Types.Constants" %>
<%@ Import Namespace="YAF.Utils" %>
<YAF:PageLinks runat="server" ID="PageLinks" />
<div class="DivTopSeparator">
</div>
<YAF:Pager ID="PagerTop" runat="server" OnPageChange="PagerTop_PageChange" />
<table class="content" width="100%" cellspacing="1" cellpadding="0">
	<tr>
		<td class="header1" colspan="3">
			<YAF:LocalizedLabel ID="Title" LocalizedTag="TITLE" runat="server" />
		</td>
	</tr>
	<asp:Repeater runat="server" ID="List" OnItemCommand="List_ItemCommand">
		<HeaderTemplate>
			<tr>
			    <td class="header2">
					<YAF:LocalizedLabel ID="Filename" LocalizedTag="FILENAME" runat="server" />
				</td>
				<td class="header2" align="right">
					<YAF:LocalizedLabel ID="Size" LocalizedTag="SIZE" runat="server" />
				</td>
				<td class="header2">
					&nbsp;
				</td>
			</tr>
		</HeaderTemplate>
		<ItemTemplate>
			<tr>
				<td class="post">
					<%# this.Eval( "FileName") %>
				</td>
                <td class="post" align="right">
					<%# this.Eval("Bytes").ToType<int>() / 1024%> Kb
				</td>
				<td class="post">
					<YAF:ThemeButton ID="ThemeButtonDelete" CssClass="yaflittlebutton" 
                                    CommandName='delete' CommandArgument='<%# this.Eval( "AttachmentID") %>' 
                                    TitleLocalizedTag="DELETE" 
                                    ImageThemePage="ICONS" ImageThemeTag="DELETE_SMALL_ICON"
                                    TextLocalizedTag="DELETE"
                                    OnLoad="Delete_Load"  runat="server">
                                </YAF:ThemeButton>
				</td>
			</tr>
		</ItemTemplate>
	</asp:Repeater>
	<tr class="footer1">
		<td colspan="3" align="center">
			<asp:Button runat="server" CssClass="pbutton" ID="Back" OnClick="Back_Click" />
		</td>
	</tr>
</table>
<YAF:Pager ID="PagerBottom" runat="server" LinkedPager="PagerTop" />
<div id="DivSmartScroller">
	<YAF:SmartScroller ID="SmartScroller1" runat="server" />
</div>
