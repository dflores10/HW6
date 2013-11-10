
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tbTeam_TextChanged(sender As Object, e As EventArgs) Handles tbTeam.TextChanged

        Dim searchWord As String
        searchWord = "Select * From TeamInfo where (TeamName Like'%" + tbTeam.Text.ToString() + "%') or (HeadCoach Like '%" + tbTeam.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord

    End Sub

    Protected Sub tbTeam2_TextChanged(sender As Object, e As EventArgs) Handles tbTeam2.TextChanged

        Dim searchWord2 As String
        searchWord2 = "Select * From TeamInfo where (TeamName Like'%" + tbTeam2.Text.ToString() + "%') or (HeadCoach Like '%" + tbTeam2.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord2

    End Sub
End Class
