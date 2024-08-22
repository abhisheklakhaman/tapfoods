//package com.tapfoods.controller;
//
//import java.nio.charset.StandardCharsets;
//import java.security.InvalidKeyException;
//import java.security.NoSuchAlgorithmException;
//import java.security.SecureRandom;
//import java.util.Base64;
//
//import javax.crypto.BadPaddingException;
//import javax.crypto.Cipher;
//import javax.crypto.IllegalBlockSizeException;
//import javax.crypto.NoSuchPaddingException;
//import javax.crypto.spec.SecretKeySpec;
//
//public class EncryptionUtil {
//
//	public static SecretKeySpec generateSecretKey() {
//		SecureRandom random = new SecureRandom();
//		byte[] keyData = new byte[16];
//		return new SecretKeySpec(keyData, "AES");
//	}
//
//	public static String encrypt(String input) {
//
//		try {
//			SecretKeySpec secretKey = generateSecretKey();
//			Cipher cipher = Cipher.getInstance("AES");
//			cipher.init(Cipher.ENCRYPT_MODE, secretKey);
//			byte[] encryptedBytes = cipher.doFinal(input.getBytes(StandardCharsets.UTF_8));
//
//			return Base64.getEncoder().encodeToString(encryptedBytes);
//
//		} catch (NoSuchAlgorithmException e) {
//			e.printStackTrace();
//		} catch (NoSuchPaddingException e) {
//			e.printStackTrace();
//		} catch (InvalidKeyException e) {
//			e.printStackTrace();
//		} catch (IllegalBlockSizeException e) {
//			e.printStackTrace();
//		} catch (BadPaddingException e) {
//			e.printStackTrace();
//		}
//		return null;
//	}
//
//	public static String decrypt(String encryptedData) {
//
//		
//		try {
//
//			SecretKeySpec secretKey = generateSecretKey();
//
//			byte[] encryptedBytes = Base64.getDecoder().decode(encryptedData);
//			Cipher cipher = Cipher.getInstance("AES");
//			cipher.init(Cipher.DECRYPT_MODE, secretKey);
//
//			byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
//			return new String(decryptedBytes, StandardCharsets.UTF_8);
//
//		} catch (NoSuchAlgorithmException e) {
//			e.printStackTrace();
//		} catch (NoSuchPaddingException e) {
//			e.printStackTrace();
//		} catch (IllegalBlockSizeException e) {
//			e.printStackTrace();
//		} catch (BadPaddingException e) {
//			e.printStackTrace();
//		} catch (InvalidKeyException e) {
//			e.printStackTrace();
//		}
//
//		return null;
//	}
//}
