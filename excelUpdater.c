#include "xlsxwriter.h"

int main(int argc, char* argv[])
{
    lxw_workbook  *workbook  = workbook_new("myexcel.xlsx");
    lxw_worksheet *worksheet = workbook_add_worksheet(workbook, NULL);
    int row = 0;
    int col = 0;

    worksheet_write_string(worksheet, row, col, "Hello me!", NULL);

    return workbook_close(workbook);
}

 /* gcc excelUpdater.c -Wall -Wstrict-prototypes -Wmissing-prototypes 
        -Wshadow -std=c18 -o excelUpdater 
        -I/usr/local/include -L/usr/local/lib -l:libxlsxwriter.a -lz */

