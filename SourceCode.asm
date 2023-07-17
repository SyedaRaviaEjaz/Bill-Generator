INCLUDE Irvine32.inc
Str_ucase PROTO
.data
ERRORMSG BYTE "Invalid Input! ", 0
str9 BYTE "           ***THANK YOU FOR VISITING KOFFEE CHALET***", 0dh, 0ah, 0
str5 BYTE "             ITEMS WITH PRICES           QUANTITY", 0dh, 0ah, 0
str3 BYTE "             ", 0
str7 BYTE "             ", 0
str6 BYTE ". ", 0
lastt BYTE "            ->No item ordered", 0dh, 0ah, 0dh, 0ah, "            ->Total Bill = 0 ", 0
iterator DWORD 0
MENU BYTE "         ************* WELCOME TO KOFFEE CHALET *************",0
str4 BYTE "                     ***** TOTAL BILL *****",0
str2 BYTE "         **************************************************", 0dh, 0ah, 0dh, 0ah, 0
str0 BYTE "                     PROJECT DESIGNED BY: ", 0
str1 BYTE "                 1. Ayesha", 0dh, 0ah, "                 2. Syeda Ravia Ejaz", 0ah, 0dh, 0
MSG BYTE "          Enter your name : ",0
HERE BYTE "Please select your starters",0
SUM DWORD 0
COUNT DWORD 0
COUNT1 DWORD 10
quantity DWORD 40 DUP(?)
DISPLAY BYTE "          ->Total bill generated :             ", 0
STARTER1 DWORD 550, 450, 500, 450, 600
DESSERT1 DWORD 250, 225, 195, 250, 120
DRINKS1 DWORD 225, 295, 295, 175, 150
MAINC2 DWORD 1300, 650, 595, 625, 590, 695, 775, 650, 1400, 595
STARTER2 BYTE "Dynamite Prawns 550",0,"Killer Wings 450",0,  "Tusca Fries 500",0, "Chicken Crispers 450",0, "Crackers 600", 0
MAINC4 BYTE "Triple Decker Steak 1300",0,"Bombastic Beef Burger 650",0,  "Penne Sausages 595",0, "Meat Ball Spaghetti 625",0, "Pili Pili Chicken 590", 0
MAINC5 BYTE "Teriyaki Chicken 695",0,"Fried Fish with BBQ Sauce 775",0,  "Crispy Beef 650",0, "Grilled Jumbo Prawns 1400",0, "Mac and Cheese 595", 0
DESSERTS3 BYTE "Lemon Cheese Cake 250",0,"Cheese Cake 225",0,  "Malt Cake 195",0, "Salted Caramel Tart 250",0, "Icecreams 120", 0
DRINKS3 BYTE "Limtu 225",0,"Blue Lady 295",0,  "Margarita 295",0, "The Detox Fox 175",0, "Mint Majito 150", 0
STARTER BYTE "         *******HERE IS THE MENU LIST*******", 0dh, 0ah, "         STARTERS", 0ah,0dh, "1. Dynamite Prawns","               ","550",0dh,0ah,"2. Killer Wings","                  ","450",0dh,0ah,"3. Tuscan Fries","                  ","500",0dh,0ah,"4. Chicken Crispers","              ","450",0dh,0ah,"5. Crackers","                      ","600",0
MAINC BYTE "        MAIN COURSE", 0ah,0dh, "1. Triple Decker Steak","           ","1300",0dh,0ah,"2. Bombastic Beef Burger","          ","650",0dh,0ah,"3. Penne Sausages","                 ","595",0dh,0ah,"4. Meat Ball Spaghetti","            ","625",0dh,0ah,"5. Pili Pili Chicken","              ","690",0
MAINC1 BYTE "6. Teriyaki Chicken","              ","695",0ah,0dh, "7. Fried Fish with BBQ Sauce","     ","775",0dh,0ah,"8. Crispy Beef","                   ","650",0dh,0ah,"9. Grilled Jumbo Prawns","          ","1400",0dh,0ah,"10. Mac and Cheese","               ","595",0
DESSERT BYTE "      DESSERTS", 0ah,0dh, "1. Lemon Cheese Cake","            ","250",0dh,0ah,"2. Cheese Cake","                  ","225",0dh,0ah,"3. Malt Cake","                    ","195",0dh,0ah,"4. Salted Caramel Tart","          ","250",0dh,0ah,"5. Icecreams","                    ","120",0
DRINKS BYTE "       DRINKS", 0ah,0dh, "1. Limtu","                      ","225",0dh,0ah,"2. Blue Lady","                  ","295",0dh,0ah,"3. Margarita","                  ","295",0dh,0ah,"4. The Detox Fox","              ","175",0dh,0ah,"5. Mint Mijito","                ","150",0
UserName DWORD ?
Number DWORD ?
Welcome BYTE "                      WELCOME ", 0
CUSTOMER BYTE "           CUSTOMER NAME:  ",0
DATE BYTE "             DATE: 13-JANUARY-2022", 0
string1 BYTE "Please select your menu items : ",0
msg1 BYTE "     Press:", 0ah, 0dh, "        1. for starters,", 0ah, 0dh, "        2. for main course, ", 0ah, 0dh, "        3. for dessert,", 0ah, 0dh,  "        4. for drinks,", 0ah, 0dh, "        5. To view The BILL",0ah, 0dh, "Wrong input will cause the program to terminate", 0dh, 0ah, "     Enter your choice: ", 0
msg2 BYTE "How many starters do you want?", 0
msg3 BYTE "Enter starter option number: ", 0
msg4 BYTE "Enter quantity: ", 0
msg5 BYTE "How many main course do you want?", 0
msg6 BYTE "Do you want to enter more menu items: ", 0
msg7 BYTE "MORE MENU ITEMS", 0
msg8 BYTE "How many desserts do you want?", 0
msg9 BYTE "How many drinks do you want?", 0
msg10 BYTE "Enter main course option number: ", 0
msg11 BYTE "Enter dessert option number: ", 0
msg12 BYTE "Enter drink option number: ", 0
.code
main PROC
     push OFFSET lastt
     mov edi, OFFSET quantity
     call crlf
     call crlf
     call crlf
     mov edx,offset MENU
     call writestring
     call crlf
     call crlf  
     call crlf
     mov edx,offset str0
     call writestring
     call crlf
     call crlf
     mov edx, OFFSET str1
     call writestring
     call crlf
     call crlf
     call crlf
     mov edx,offset str2
     call writestring
     call crlf
     call crlf
     call waitmsg
     call clrscr
     call crlf
     call crlf
     call crlf
     mov edx,offset MENU
     call writestring
     call crlf
     call crlf
     mov edx,offset MSG
     call writestring
     mov edx, offset UserName
     mov ecx, 20
     call readstring
     call crlf
     call crlf
     mov edx, OFFSET Welcome
     call writestring
     mov edx, OFFSET UserName
     call writestring
     call crlf
   l1:
       push OFFSET starter
       push OFFSET mainc
       push offset mainc1
       push OFFSET DESSERT
       push OFFSET DRINKS
       call MENU1
   start:
        call crlf
        call crlf
        lea edx, msg1
        call WriteString
        call ReadDec
        cmp eax, 1
        je add1           ;starter items
        cmp eax, 2
        je add2           ;main course item
        cmp eax, 3
        je add3           ;desserts item
        cmp eax, 4
        je add4           ;drinks item
        cmp eax, 5
        je endd           ;display the bill generated
    cutt:   
        mov edx, OFFSET ERRORMSG
        call writestring
        jmp endd

   add1:
        mov edx,OFFSET msg2
        call WriteString
        call ReadDec 
        mov ecx,eax
   ll1:
        mov edx,OFFSET msg3
        call WriteString
        call ReadDec
        mov ebx,sum
        mov esi,offset starter1
        cmp eax,1
        je index1
        cmp eax,2
        je index2
        cmp eax,3
        je index3
        cmp eax,4
        je index4
        cmp eax,5
        je index5
        jmp cutt
    index1:
        add ebx, [esi]
        push OFFSET STARTER2
        inc COUNT
        jmp lll2
    index2:
        add ebx,[esi+4]
        push OFFSET STARTER2+20
        inc COUNT
        jmp lll2
    index3:
        add ebx,[esi+8]
        push OFFSET STARTER2+37
        inc COUNT
        jmp lll2
    index4:
        push OFFSET STARTER2+53
        inc COUNT
        add ebx, [esi+12]
        jmp lll2
    index5:
        push OFFSET STARTER2+74
        inc COUNT
        add ebx,[esi+16]
        jmp lll2
    lll2:
        mov sum,ebx
        mov edx,OFFSET msg4
        call WriteString
        call ReadDec
        mov [edi], eax         ;make variable for quantity
        add edi, 4
        mul sum
        mov sum,eax
        call crlf
        dec ecx
        cmp ecx, 0
        ja ll1
        mov edx, OFFSET msg6
        mov ebx, OFFSET msg7
        call msgboxask
        cmp eax,6
        je start
        jmp endd

    add2:
        mov edx,OFFSET msg5
        call WriteString
        call ReadDec
        mov ecx,eax
    ll2:
        mov edx,OFFSET msg10
        call WriteString
        call ReadDec
        mov ebx,sum
        mov esi,offset MAINC2
        cmp eax,1
        je index11
        cmp eax,2
        je index22
        cmp eax,3
        je index33
        cmp eax,4
        je index44
        cmp eax,5
        je index55
        cmp eax,6
        je index66
        cmp eax,7
        je index77
        cmp eax,8
        je index88
        cmp eax,9
        je index99
        cmp eax,10
        je index10
        jmp cutt
    index11:
        add ebx,[esi]
        push OFFSET MAINC4
        inc COUNT
        jmp lll1
    index22:
        add ebx,[esi+4]
        push OFFSET MAINC4+25
        inc COUNT
        jmp lll1
    index33:
        add ebx,[esi+8]
        push OFFSET MAINC4+51
        inc COUNT
        jmp lll1
    index44:
        add ebx,[esi+12]
        push OFFSET MAINC4+70
        inc COUNT
        jmp lll1
    index55:
        add ebx,[esi+16]
        push OFFSET MAINC4+94
        inc COUNT
        jmp lll1
    index66:
        add ebx,[esi+20]
        push OFFSET MAINC5
        inc COUNT
        jmp lll1
    index77:
        add ebx,[esi+24]
        push OFFSET MAINC5+21
        inc COUNT
        jmp lll1
    index88:
        add ebx,[esi+28]
        push OFFSET MAINC5+51
        inc COUNT
        jmp lll1
    index99:
        add ebx,[esi+32]
        push OFFSET MAINC5+67
        inc COUNT
        jmp lll1
    index10:
        add ebx,[esi+36]
        push OFFSET MAINC5+93
        inc COUNT
        jmp lll1
    lll1:
        mov sum,ebx
        mov edx,OFFSET msg4
        call WriteString
        call ReadDec
        mov [edi], eax            ;make variable for quantity
        add edi, 4
        mul sum
        mov sum,eax
        dec ecx
        cmp ecx, 0
        ja ll2
        mov edx, OFFSET msg6
        mov ebx, OFFSET msg7
        call msgboxask
        cmp eax,6
        je start
        jmp endd

    add3:
        mov edx,OFFSET msg8
        call WriteString
        call ReadDec
        mov ecx,eax
    ll3:
        mov edx,OFFSET msg11
        call WriteString
        call ReadDec
        mov ebx,sum
        mov esi,offset DESSERT1
        cmp eax,1
        je index111
        cmp eax,2
        je index222
        cmp eax,3
        je index333
        cmp eax,4
        je index444
        cmp eax,5
        je index555
        jmp cutt
    index111:
        add ebx,[esi]
        push OFFSET DESSERTS3
        inc COUNT
        jmp lll3
    index222:
        add ebx,[esi+4]
        push OFFSET DESSERTS3+22
        inc COUNT
        jmp lll3
    index333:
        add ebx,[esi+8]
        push OFFSET DESSERTS3+38
        inc COUNT
        jmp lll3
    index444:
        add ebx,[esi+12]
        push OFFSET DESSERTS3+52
        inc COUNT
        jmp lll3
    index555:
        add ebx,[esi+16]
        push OFFSET DESSERTS3+76
        inc COUNT
        jmp lll3
    lll3:
        mov sum,ebx
        mov edx,OFFSET msg4
        call WriteString
        call ReadDec
        mov [edi], eax
        add edi, 4
        mul sum
        mov sum,eax
        dec ecx
        cmp ecx, 0
        ja ll3
        mov edx, OFFSET msg6
        mov ebx, OFFSET msg7
        call msgboxask
        cmp eax,6
        je start
        jmp endd

    add4:
        mov edx,OFFSET msg9
        call WriteString
        call ReadDec 
        mov ecx,eax
    ll4:
        mov edx,OFFSET msg12
        call WriteString
        call ReadDec
        mov ebx,sum
        mov esi,offset DRINKS1
        cmp eax,1
        je index1111
        cmp eax,2
        je index2222
        cmp eax,3
        je index3333
        cmp eax,4
        je index4444
        cmp eax,5
        je index5555
        jmp cutt
    index1111:
        add ebx,[esi]
        push OFFSET DRINKS3
        inc COUNT
        jmp lll4
    index2222:
        add ebx,[esi+4]
        push OFFSET DRINKS3+10
        inc COUNT
        jmp lll4
    index3333:
        add ebx,[esi+8]
        push OFFSET DRINKS3+24
        inc COUNT
        jmp lll4
    index4444:
        add ebx,[esi+12]
        push OFFSET DRINKS3+38
        inc COUNT
        jmp lll4
    index5555:
        add ebx,[esi+16]
        push OFFSET DRINKS3+56
        inc COUNT
        jmp lll4
    lll4:
        mov sum,ebx
        mov edx,OFFSET msg4
        call WriteString
        call ReadDec
        stosd              ;make variable for quantity
        add edi, 4
        mul sum
        mov sum,eax
        dec ecx
        cmp ecx, 0
        ja ll4
        mov edx, OFFSET msg6
        mov ebx, OFFSET msg7    
        call msgboxask
        cmp eax,6
        je start
        jmp endd

    endd:
         call crlf
         call crlf
         call waitmsg
         call clrscr
         call crlf
         call crlf
         call crlf
         mov edx,offset MENU
         call writestring
         call crlf
         call crlf
         mov edx, OFFSET str4
         call writestring
         call crlf
         call crlf
         mov edx, OFFSET CUSTOMER
         call writestring
         INVOKE Str_ucase, addr UserName
         mov edx, OFFSET UserName
         call writestring
         mov edx, OFFSET DATE
         call writestring
         call crlf
         call crlf
         mov edx, OFFSET str5
         call writestring
         mov edi, OFFSET lastt
         pop edx
         cmp edx, edi
         je none1
         push edx
         mov esi, OFFSET quantity
         mov ecx, count
     Bill1:
            mov edx, OFFSET str3
            call writestring
            inc iterator 
            mov eax, iterator
            call writedec
            mov edx, OFFSET str6
            call writestring
            pop edx
            call writestring
            mov edx, OFFSET str7
            call writestring
            lodsd
            call writedec
            add edi, 4
            call crlf
            loop Bill1
    lexit:
        call crlf
        mov edx, OFFSET DISPLAY
        call writestring
        mov eax, sum
        call writedec
        jmp noo1
     none1:   
        call writestring
     noo1:
        call crlf
        call crlf
        mov edx, OFFSET str9
        call writestring
        call crlf
        mov edx, OFFSET str2
        call writestring
        call waitmsg
            exit
    main endp
;PROCEDURE
MENU1 PROC
    enter 0,0
    mov eax,1000
    call delay
        mov edx,[ebp+24]
        call writestring 
        call crlf
        call crlf
        mov eax,1000
    call delay
        mov edx,[ebp+20]
        call writestring 
        call crlf
        call crlf
        mov eax,1000
    call delay
        mov edx,[ebp+16]
        call writestring 
        call crlf
        call crlf
        mov eax,1000
    call delay
        mov edx,[ebp+12]
        call writestring 
        call crlf
        call crlf
        mov eax,1000
    call delay
        mov edx,[ebp+8]
        call writestring 
    leave 
    ret 20
MENU1 ENDP 
End main




