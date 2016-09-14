///DisplayText (x, y, text)
x = argument0;
y = argument1;
text = argument2;

len = string_length(text);
for(i=1;i<=len;i+=1)
{
    letter = string_char_at(text, i);
    ascii = ord(letter);
    if ascii >= 65
        draw_sprite(spr_font,ascii - 65,x + i*7,y);
    if ascii == 58
        draw_sprite(spr_font,68,x + i*7,y);
    if ascii >= 49 && ascii <=57
        draw_sprite(spr_font,ascii + 3,x + i*7,y);
    if ascii == 48
        draw_sprite(spr_font,61,x + i*7,y);
}
