/* 
 * PROJECT: NyARToolkitAS3
 * --------------------------------------------------------------------------------
 * This work is based on the original ARToolKit developed by
 *   Hirokazu Kato
 *   Mark Billinghurst
 *   HITLab, University of Washington, Seattle
 * http://www.hitl.washington.edu/artoolkit/
 *
 * The NyARToolkitAS3 is AS3 edition ARToolKit class library.
 * Copyright (C)2010 Ryo Iizuka
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * 
 * For further information please contact.
 *	http://nyatla.jp/nyatoolkit/
 *	<airmail(at)ebony.plala.or.jp> or <nyatla(at)nyatla.jp>
 * 
 */
package jp.nyatla.nyartoolkit.as3.core.transmat
{
	import jp.nyatla.nyartoolkit.as3.core.types.*;
	import jp.nyatla.nyartoolkit.as3.core.squaredetect.*;
	/**
	 * This class calculates ARMatrix from square information. -- 変換行列を計算するクラス。
	 * 
	 */
	public interface INyARTransMat
	{
		/**
		 * 理想座標系の四角系から、i_offsetのパラメタで示される矩形を(0,0,0)の点から移動するための行列式を計算し、o_resultへ格納します。
		 * @param i_square
		 * @param i_offset
		 * @param o_result
		 * @throws NyARException
		 */
		function transMat(i_square:NyARSquare,i_offset:NyARRectOffset,o_result:NyARTransMatResult):Boolean;
		/**
		 * 理想座標系の四角系から、i_offsetのパラメタで示される矩形を(0,0,0)の点から移動するための行列式を計算し、o_resultへ格納します。
		 * i_prev_resultにある過去の情報を参照するため、変移が少ない場合はより高精度な値を返します。
		 * @param i_square
		 * @param i_offset
		 * @param i_prev_result
		 * 参照する過去のオブジェクトです。このオブジェクトとo_resultには同じものを指定できます。
		 * @param o_result
		 * 結果を格納するオブジェクトです。
		 * @throws NyARException
		 */
		function transMatContinue(i_square:NyARSquare,i_offset:NyARRectOffset,i_prev_result:NyARTransMatResult,o_result:NyARTransMatResult):Boolean;
	}
}