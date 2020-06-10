
pragma solidity ^0.6.6;
pragma experimental ABIEncoderV2;

import '../interfaces/ConstraintInterface.sol';
import '../default_cs.sol';
import '@nomiclabs/buidler/console.sol';

// The linter doesn't understand 'abstract' and thinks it's indentation

// solhint-disable-next-line indent
abstract contract StarkdexTrace is DefaultConstraintSystem(2, 98, 10, 16) {
    // This lets us map rows -> inverse index,
    // In complex systems use a autogen binary search.
    function row_to_offset(uint256 row) internal pure override returns(uint256) {if (row == 0) {return 0;}
 else if (row == 1) {return 1;}
 else if (row == 2) {return 2;}
 else if (row == 3) {return 3;}
 else if (row == 4) {return 4;}
 else if (row == 6) {return 5;}
 else if (row == 7) {return 6;}
 else if (row == 8) {return 7;}
 else if (row == 16) {return 8;}
 else if (row == 20) {return 9;}
 else if (row == 24) {return 10;}
 else if (row == 32) {return 11;}
 else if (row == 36) {return 12;}
 else if (row == 40) {return 13;}
 else if (row == 48) {return 14;}
 else if (row == 56) {return 15;}
 else if (row == 64) {return 16;}
 else if (row == 68) {return 17;}
 else if (row == 72) {return 18;}
 else if (row == 84) {return 19;}
 else if (row == 88) {return 20;}
 else if (row == 96) {return 21;}
 else if (row == 100) {return 22;}
 else if (row == 112) {return 23;}
 else if (row == 132) {return 24;}
 else if (row == 148) {return 25;}
 else if (row == 164) {return 26;}
 else if (row == 196) {return 27;}
 else if (row == 255) {return 28;}
 else if (row == 256) {return 29;}
 else if (row == 511) {return 30;}
 else if (row == 512) {return 31;}
 else if (row == 767) {return 32;}
 else if (row == 768) {return 33;}
 else if (row == 1020) {return 34;}
 else if (row == 1021) {return 35;}
 else if (row == 1022) {return 36;}
 else if (row == 1024) {return 37;}
 else if (row == 1026) {return 38;}
 else if (row == 1027) {return 39;}
 else if (row == 1279) {return 40;}
 else if (row == 2044) {return 41;}
 else if (row == 2051) {return 42;}
 else if (row == 3069) {return 43;}
 else if (row == 3075) {return 44;}
 else if (row == 4092) {return 45;}
 else if (row == 4099) {return 46;}
 else if (row == 5117) {return 47;}
 else if (row == 5123) {return 48;}
 else if (row == 7171) {return 49;}
 else if (row == 8188) {return 50;}
 else if (row == 8195) {return 51;}
 else if (row == 8196) {return 52;}
 else if (row == 9213) {return 53;}
 else if (row == 9219) {return 54;}
 else if (row == 11261) {return 55;}
 else if (row == 11267) {return 56;}
 else if (row == 12284) {return 57;}
 else if (row == 15871) {return 58;}
 else if (row == 16328) {return 59;}
 else if (row == 16336) {return 60;}
 else if (row == 16360) {return 61;}
 else if (row == 16368) {return 62;}
 else if (row == 16376) {return 63;}
 else if (row == 16384) {return 64;}
 else if (row == 16416) {return 65;}
 else if (row == 16639) {return 66;}
 else if (row == 19453) {return 67;}
 else if (row == 19459) {return 68;}
 else if (row == 27645) {return 69;}
 else if (row == 27651) {return 70;}
 else if (row == 32255) {return 71;}
 else if (row == 32676) {return 72;}
 else if (row == 32708) {return 73;}
 else if (row == 32712) {return 74;}
 else if (row == 32724) {return 75;}
 else if (row == 32740) {return 76;}
 else if (row == 32744) {return 77;}
 else if (row == 32752) {return 78;}
 else if (row == 32760) {return 79;}
 else if (row == 32768) {return 80;}
 else if (row == 32772) {return 81;}
 else if (row == 32788) {return 82;}
 else if (row == 33023) {return 83;}
 else if (row == 35843) {return 84;}
 else if (row == 36867) {return 85;}
 else if (row == 37891) {return 86;}
 else if (row == 39939) {return 87;}
 else if (row == 40956) {return 88;}
 else if (row == 44035) {return 89;}
 else if (row == 49128) {return 90;}
 else if (row == 49144) {return 91;}
 else if (row == 49407) {return 92;}
 else if (row == 52227) {return 93;}
 else if (row == 60419) {return 94;}
 else if (row == 65023) {return 95;}
 else if (row == 65512) {return 96;}
 else if (row == 65528) {return 97;}}

    function layout_col_major() internal pure override returns(uint256[] memory) {
        uint256[] memory result = new uint256[](254);    (result[0], result[1]) = (0, 0);    (result[2], result[3]) = (0, 1);    (result[4], result[5]) = (0, 255);    (result[6], result[7]) = (0, 256);    (result[8], result[9]) = (0, 511);    (result[10], result[11]) = (0, 15871);    (result[12], result[13]) = (0, 32255);    (result[14], result[15]) = (1, 0);    (result[16], result[17]) = (1, 1);    (result[18], result[19]) = (1, 255);    (result[20], result[21]) = (1, 256);    (result[22], result[23]) = (2, 0);    (result[24], result[25]) = (3, 0);    (result[26], result[27]) = (3, 1);    (result[28], result[29]) = (3, 256);    (result[30], result[31]) = (3, 512);    (result[32], result[33]) = (3, 768);    (result[34], result[35]) = (4, 0);    (result[36], result[37]) = (4, 1);    (result[38], result[39]) = (4, 255);    (result[40], result[41]) = (4, 256);    (result[42], result[43]) = (4, 511);    (result[44], result[45]) = (4, 15871);    (result[46], result[47]) = (4, 65023);    (result[48], result[49]) = (5, 0);    (result[50], result[51]) = (5, 1);    (result[52], result[53]) = (5, 255);    (result[54], result[55]) = (5, 256);    (result[56], result[57]) = (6, 0);    (result[58], result[59]) = (6, 255);    (result[60], result[61]) = (6, 767);    (result[62], result[63]) = (6, 1279);    (result[64], result[65]) = (6, 16639);    (result[66], result[67]) = (6, 33023);    (result[68], result[69]) = (6, 49407);    (result[70], result[71]) = (7, 0);    (result[72], result[73]) = (7, 1);    (result[74], result[75]) = (7, 256);    (result[76], result[77]) = (7, 512);    (result[78], result[79]) = (7, 768);    (result[80], result[81]) = (8, 0);    (result[82], result[83]) = (8, 1);    (result[84], result[85]) = (8, 2);    (result[86], result[87]) = (8, 3);    (result[88], result[89]) = (8, 4);    (result[90], result[91]) = (8, 6);    (result[92], result[93]) = (8, 7);    (result[94], result[95]) = (8, 1020);    (result[96], result[97]) = (8, 1021);    (result[98], result[99]) = (8, 1022);    (result[100], result[101]) = (8, 1024);    (result[102], result[103]) = (8, 1026);    (result[104], result[105]) = (8, 1027);    (result[106], result[107]) = (8, 2044);    (result[108], result[109]) = (8, 2051);    (result[110], result[111]) = (8, 3069);    (result[112], result[113]) = (8, 3075);    (result[114], result[115]) = (8, 4092);    (result[116], result[117]) = (8, 4099);    (result[118], result[119]) = (8, 5117);    (result[120], result[121]) = (8, 5123);    (result[122], result[123]) = (8, 7171);    (result[124], result[125]) = (8, 8188);    (result[126], result[127]) = (8, 8195);    (result[128], result[129]) = (8, 9213);    (result[130], result[131]) = (8, 9219);    (result[132], result[133]) = (8, 11261);    (result[134], result[135]) = (8, 11267);    (result[136], result[137]) = (8, 12284);    (result[138], result[139]) = (8, 19453);    (result[140], result[141]) = (8, 19459);    (result[142], result[143]) = (8, 27645);    (result[144], result[145]) = (8, 27651);    (result[146], result[147]) = (8, 35843);    (result[148], result[149]) = (8, 36867);    (result[150], result[151]) = (8, 37891);    (result[152], result[153]) = (8, 39939);    (result[154], result[155]) = (8, 40956);    (result[156], result[157]) = (8, 44035);    (result[158], result[159]) = (8, 52227);    (result[160], result[161]) = (8, 60419);    (result[162], result[163]) = (9, 0);    (result[164], result[165]) = (9, 4);    (result[166], result[167]) = (9, 8);    (result[168], result[169]) = (9, 16);    (result[170], result[171]) = (9, 20);    (result[172], result[173]) = (9, 24);    (result[174], result[175]) = (9, 32);    (result[176], result[177]) = (9, 36);    (result[178], result[179]) = (9, 40);    (result[180], result[181]) = (9, 48);    (result[182], result[183]) = (9, 56);    (result[184], result[185]) = (9, 64);    (result[186], result[187]) = (9, 68);    (result[188], result[189]) = (9, 72);    (result[190], result[191]) = (9, 84);    (result[192], result[193]) = (9, 88);    (result[194], result[195]) = (9, 96);    (result[196], result[197]) = (9, 100);    (result[198], result[199]) = (9, 112);    (result[200], result[201]) = (9, 132);    (result[202], result[203]) = (9, 148);    (result[204], result[205]) = (9, 164);    (result[206], result[207]) = (9, 196);    (result[208], result[209]) = (9, 8196);    (result[210], result[211]) = (9, 16328);    (result[212], result[213]) = (9, 16336);    (result[214], result[215]) = (9, 16360);    (result[216], result[217]) = (9, 16368);    (result[218], result[219]) = (9, 16376);    (result[220], result[221]) = (9, 16384);    (result[222], result[223]) = (9, 16416);    (result[224], result[225]) = (9, 32676);    (result[226], result[227]) = (9, 32708);    (result[228], result[229]) = (9, 32712);    (result[230], result[231]) = (9, 32724);    (result[232], result[233]) = (9, 32740);    (result[234], result[235]) = (9, 32744);    (result[236], result[237]) = (9, 32752);    (result[238], result[239]) = (9, 32760);    (result[240], result[241]) = (9, 32768);    (result[242], result[243]) = (9, 32772);    (result[244], result[245]) = (9, 32788);    (result[246], result[247]) = (9, 49128);    (result[248], result[249]) = (9, 49144);    (result[250], result[251]) = (9, 65512);    (result[252], result[253]) = (9, 65528);        return result;
    }
    function layout_rows() internal pure override returns(uint256[] memory) {
        uint256[] memory result = new uint256[](98);        result[0] = 0;        result[1] = 1;        result[2] = 2;        result[3] = 3;        result[4] = 4;        result[5] = 6;        result[6] = 7;        result[7] = 8;        result[8] = 16;        result[9] = 20;        result[10] = 24;        result[11] = 32;        result[12] = 36;        result[13] = 40;        result[14] = 48;        result[15] = 56;        result[16] = 64;        result[17] = 68;        result[18] = 72;        result[19] = 84;        result[20] = 88;        result[21] = 96;        result[22] = 100;        result[23] = 112;        result[24] = 132;        result[25] = 148;        result[26] = 164;        result[27] = 196;        result[28] = 255;        result[29] = 256;        result[30] = 511;        result[31] = 512;        result[32] = 767;        result[33] = 768;        result[34] = 1020;        result[35] = 1021;        result[36] = 1022;        result[37] = 1024;        result[38] = 1026;        result[39] = 1027;        result[40] = 1279;        result[41] = 2044;        result[42] = 2051;        result[43] = 3069;        result[44] = 3075;        result[45] = 4092;        result[46] = 4099;        result[47] = 5117;        result[48] = 5123;        result[49] = 7171;        result[50] = 8188;        result[51] = 8195;        result[52] = 8196;        result[53] = 9213;        result[54] = 9219;        result[55] = 11261;        result[56] = 11267;        result[57] = 12284;        result[58] = 15871;        result[59] = 16328;        result[60] = 16336;        result[61] = 16360;        result[62] = 16368;        result[63] = 16376;        result[64] = 16384;        result[65] = 16416;        result[66] = 16639;        result[67] = 19453;        result[68] = 19459;        result[69] = 27645;        result[70] = 27651;        result[71] = 32255;        result[72] = 32676;        result[73] = 32708;        result[74] = 32712;        result[75] = 32724;        result[76] = 32740;        result[77] = 32744;        result[78] = 32752;        result[79] = 32760;        result[80] = 32768;        result[81] = 32772;        result[82] = 32788;        result[83] = 33023;        result[84] = 35843;        result[85] = 36867;        result[86] = 37891;        result[87] = 39939;        result[88] = 40956;        result[89] = 44035;        result[90] = 49128;        result[91] = 49144;        result[92] = 49407;        result[93] = 52227;        result[94] = 60419;        result[95] = 65023;        result[96] = 65512;        result[97] = 65528;
        return result;
    }
}