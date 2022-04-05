import java.util.*;

class VaultDoor4 {
	public static void main(String args[]) {
		byte[] myBytes = {
			106 , 85  , 53  , 116 , 95  , 52  , 95  , 98  ,
			0x55, 0x6e, 0x43, 0x68, 0x5f, 0x30, 0x66, 0x5f,
			0142, 0131, 0164, 063 , 0163, 0137, 0146, 064 ,
			'a' , '8' , 'c' , 'd' , '8' , 'f' , '7' , 'e' 
		};
		for(int i = 0; i<32; i ++) {
			System.out.print(myBytes[i]);
		}
		String str = new String(myBytes);
		System.out.print(str);
	}
}
