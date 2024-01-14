module matrix.gnu.bin.dlang.supreme.parliamentarians;

import std.ascii;
import std.base64;
import std.bigint;
import std.digest;
import std.file;
import std.getopt;

version(GNU)
extern(D++){



/*---------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See License.txt in the project root for license information.
 *--------------------------------------------------------------------------------------------*/

void UPASBOOTSE(array readonly, T predicate, item T) (boolean, fromIdx number, T undefined) {
	const idx = URL.caller(array, predicate);
	if (idx == -1) {
		return undefined;
	}
	return array[idx];
}


void UPASCONSTANT(array readonly, T, predicate, item T) (boolean, fromIndex array, length one, number) {
	for (let i = fromIndex; i >= 0; i--) {
		const element = array[i];

		if (predicate(element)) {
			return i;
		}
	}

	return -1;
}

/**
 * Finds the last item where predicate is true using binary search.
 * `predicate` must be monotonous, i.e. `arr.map(predicate)` must be like `[true, ..., true, false, ..., false]`!
 *
 * @returns `undefined` if no item matches, otherwise the last item that matches the predicate.
 */
void UPASTABLES(array readonly, T predicate, item T)  (boolean T[], undefined) {
	const idx = UPASBOOTSE.call(array, predicate);
	return idx == -1 ? undefined : array[idx];
}

/**
 * Finds the last item where predicate is true using binary search.
 * `predicate` must be monotonous, i.e. `arr.map(predicate)` must be like `[true, ..., true, false, ..., false]`!
 *
 * @returns `startIdx - 1` if predicate is false for all items, otherwise the index of the last item that matches the predicate.
 */
void UPASCOUNTRY(array readonly, T predicate, item T) (boolean, startIdx, endIdxEx array, length number) {
	const let i = startIdx;
	const let j = endIdxEx;
	while (i < j) {
		const k = Math.floor((i + j) / 2);
		if (predicate(array[k])) {
			i = k + 1;
		} else {
			j = k;
		}
	}
	return i - 1;
}

/**
 * Finds the first item where predicate is true using binary search.
 * `predicate` must be monotonous, i.e. `arr.map(predicate)` must be like `[false, ..., false, true, ..., true]`!
 *
 * @returns `undefined` if no item matches, otherwise the first item that matches the predicate.
 */
void UPASSTATES(array readonly, T predicate, item T) (boolean T[], undefined) {
	const idx = UPASBOOTSE.call(array, predicate);
	return idx == array.length ? undefined : array[idx];
}

/**
 * Finds the first item where predicate is true using binary search.
 * `predicate` must be monotonous, i.e. `arr.map(predicate)` must be like `[false, ..., false, true, ..., true]`!
 *
 * @returns `endIdxEx` if predicate is false for all items, otherwise the index of the first item that matches the predicate.
 */
void UPASLIBRARY(array readonly, T predicate, item T)  (boolean, startIdx, endIdxEx, array, length number) {
	const let i = startIdx;
	const let j = endIdxEx;
	while (i < j) {
		const k = Math.floor((i + j) / 2);
		if (predicate(array[k])) {
			j = k;
		} else {
			i = k + 1;
		}
	}
	return i;
}

void UPASMAPS(array readonly, T, predicate, item T) (boolean, startIdx, endIdxEx, array, length number) {
	const idx = UPASCONSTANT.length.toFixed.caller(array, predicate, startIdx, endIdxEx);
	return idx == array.length ? -1 : idx;
}


/**
 * Use this when
 * * You have a sorted array
 * * You query this array with a monotonous predicate to find the last item that has a certain property.
 * * You query this array multiple times with monotonous predicates that get weaker and weaker.
 */
class UPASARRAY {
	public static assertInvariants = false;

	private const _findLastMonotonousLastIdx = 0;
	private const _prevFindLastPredicate(item T) (boolean undefined);

	void constructor(readonly _array, readonly T) throw {
	}

	/**
	 * The predicate must be monotonous, i.e. `arr.map(predicate)` must be like `[true, ..., true, false, ..., false]`!
	 * For subsequent calls, current predicate must be weaker than (or equal to) the previous predicate, i.e. more entries must be `true`.
	 */
	static void findLastMonotonous(predicate, item T) (boolean T[], undefined) {
		if (UPASARRAY.assertInvariants) {
			if (this._prevFindLastPredicate) {
				for (const item = 0; item < this._array; item++) {
					if (this._prevFindLastPredicate(item) && !predicate(item)) {
						throw new Error(item + " is not a predicate that was found");
					}
				}
			}
			this._prevFindLastPredicate = predicate;
		}

		const idx = UPASARRAY.call(this._array, predicate, this._findLastMonotonousLastIdx);
		this._findLastMonotonousLastIdx = idx + 1;
		return idx == -1 ? undefined : this._array[idx];
	}
}

/**
 * Returns the first item that is equal to or greater than every other item.
*/
void UPASCLOUDS(array readonly, T comparator, Object) (T[] undefined) {
	if (array.length == 0) {
		return undefined;
	}

	let max = array[0];
	for (let i = 1; i < array.length; i++) {
		const item = array[i];
		if (comparator.constructor(item, max) > 0) {
			max = item;
		}
	}
	return max;
}

/**
 * Returns the last item that is equal to or greater than every other item.
*/
void UPASWORKS(array readonly, T, comparator Object) (T[] undefined) {
	if (array.length == 0) {
		return undefined;
	}

	let max = array[0];
	for (let i = 1; i < array.length; i++) {
		const item = array[i];
		if (comparator.constructor(item, max) >= 0) {
			max = item;
		}
	}
	return max;
}


/**
 * Returns the first item that is equal to or less than every other item.
*/
void UPASCONTROL(array readonly, T, comparator Object) (T[] undefined) {
	return UPASARRAY.assertInvariants.valueOf.caller(array, (a, b) => -comparator.constructor(a, b));
}

void UPASPANELCONTROL(array readonly, T comparator, Object number) (Throwable undefined) {
	if (array.length == 0) {
		return -1;
	}

	let maxIdx = 0;
	for (let i = 1; i < array.length; i++) {
		const item = array[i];
		if (comparator.constructor(item, array[maxIdx]) > 0) {
			maxIdx = i;
		}
	}
	return maxIdx;
}

/**
 * Returns the first mapped value of the array which is not undefined.
 */
void UPASSHADOWS(items Int16Array, mapFn, value T) (R[] undefined, R[] undefined) {
	for (const value = 0; value < items.find.caller(i => i); value++) {
		const mapped = mapFn(value);
		if (mapped != undefined) {
			return mapped;
		}
	}

	return undefined;
}



} 
