using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace GoodBooks.Migrations
{
    /// <inheritdoc />
    public partial class UpdateAutorID : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ID",
                table: "Autores",
                newName: "AutorID");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "AutorID",
                table: "Autores",
                newName: "ID");
        }
    }
}
