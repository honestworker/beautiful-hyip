jQuery(document).ready(function($){
    $.ajax({
        type: 'GET',
        url: '?a=last10',
        datattype: "html",
        contentType: false,
        processData: false,
        beforeSend: function() {
        },
        success: function(data) {
            var source = $('' + data + '');
            var last10_table = source.find('#last10');
            if (last10_table) {
                var last10_columns = last10_table.find('tr');
                var last10_length = last10_columns.length;
                if (last10_length > 6) {
                    last10_length = 6;
                }
                
                var last5_table = $('#last5');
                var last5_columns = last5_table.find('tr');
                
                var continue_flag = 1;
                for (var index_column = 1; index_column < last10_length; index_column++ ) {
                    var last10_elements = $(last10_columns[index_column]).find('td');
                    var last5_elements = $(last5_columns[index_column - 1]).find('td');
                    for (index_row = 0; index_row < last10_elements.length; index_row++) {
                        if (index_column == 1 && index_row == 0) {
                            if ($(last10_elements[index_row]).html() == 'No investors found') {
                                continue_flag = 0;
                                break;
                            }
                        }
                        if (index_row == 0) {
                            $(last5_elements[index_row]).html($(last10_elements[index_row]).html());
                        } else if (index_row == 1) {
                            $(last5_elements[index_row]).html($(last10_elements[2])[0].firstChild);
                        } else if (index_row == 2) {
                            $(last5_elements[index_row]).html($(last10_elements[2])[0].lastChild);
                        }
                    }
                    if (continue_flag == 0) {
                        break;
                    }
                }
                
            }
        },
        error: function(data) {
        }
    });
    
    $.ajax({
        type: 'GET',
        url: '?a=paidout',
        datattype: "html",
        contentType: false,
        processData: false,
        beforeSend: function() {
        },
        success: function(data) {
            var source = $('' + data + '');
            var last10_table = source.find('#paidout10');
            if (last10_table) {
                var last10_columns = last10_table.find('tr');
                var last10_length = last10_columns.length;
                if (last10_length > 6) {
                    last10_length = 6;
                }
                
                var last5_table = $('#paidout5');
                var last5_columns = last5_table.find('tr');
                
                var continue_flag = 1;
                for (var index_column = 1; index_column < last10_length; index_column++ ) {
                    var last10_elements = $(last10_columns[index_column]).find('td');
                    var last5_elements = $(last5_columns[index_column - 1]).find('td');
                    for (index_row = 0; index_row < last10_elements.length; index_row++) {
                        if (index_column == 1 && index_row == 0) {
                            if ($(last10_elements[index_row]).html() == 'No transactions found') {
                                continue_flag = 0;
                                break;
                            }
                        }
                        if (index_row == 0) {
                            $(last5_elements[index_row]).html($(last10_elements[index_row]).html());
                        } else if (index_row == 1) {
                            $(last5_elements[index_row]).html($(last10_elements[2])[0].firstChild);
                        } else if (index_row == 2) {
                            $(last5_elements[index_row]).html($(last10_elements[2])[0].lastChild);
                        }
                    }
                    if (continue_flag == 0) {
                        break;
                    }
                }
            }
        },
        error: function(data) {
        }
    });
});