function find_address_remote(zipcode) {
    $.ajax({
        type: "GET",
        url: "find_address",
        data: "zipcode=" + zipcode, 
        dataType: "script"
    });
}
